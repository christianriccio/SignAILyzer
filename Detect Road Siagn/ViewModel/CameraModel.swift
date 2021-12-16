//
//  CameraModel.swift
//  Detect Road Siagn
//
//  Created by Christian Riccio on 11/12/21.
//

import Foundation
import AVFoundation
import SwiftUI
import CoreML

class CameraModel: NSObject, ObservableObject, AVCapturePhotoCaptureDelegate{
    @Published var isTaken = false
    @Published var session = AVCaptureSession()
    @Published var alert = false
    @Published var output = AVCapturePhotoOutput()
    @Published var preview : AVCaptureVideoPreviewLayer!
    @Published var isSaved = false
    @Published var picData = Data(count: 0)
    @Published var classificationLabel: Labels? = nil
    
    
    static public let instance: CameraModel = CameraModel()
    
    func Check(){
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case .authorized:
            setUp()
            return
        case .notDetermined:
            AVCaptureDevice.requestAccess(for: .video) {(status) in
                if status {
                    self.setUp()
                }
            }
        case .denied:
            self.alert.toggle()
            return
        default:
            return
            
        }
    }
    func setUp(){
        do {
            self.session.beginConfiguration()
            let device = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .back)
            let input = try AVCaptureDeviceInput(device: device!)
            
            if self.session.canAddInput(input) {
                self.session.addInput(input)
            }
            
            if self.session.canAddOutput(self.output){
                self.session.addOutput(self.output)
            }
            
            self.session.commitConfiguration()
        }
        catch{
            print(error.localizedDescription)
        }
        
    }
    func takePic(){
        DispatchQueue.global(qos: .background).async {
            self.output.capturePhoto(with: AVCapturePhotoSettings(), delegate: self)
            self.session.stopRunning()
            DispatchQueue.main.async {
                withAnimation{self.isTaken.toggle()}
            }
        }
    }
    func reTake(){
        DispatchQueue.global(qos: .background).async {
            
            self.session.startRunning()
            DispatchQueue.main.async{
                withAnimation{self.isTaken.toggle()}
                self.isSaved = false
            }
        }
    }
    public func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
        if error != nil {
            return
        }
        print("pic taken...")
        
        guard let imageData = photo.fileDataRepresentation() else {return}
        
        self.picData = imageData
    }
    
    func classifyImage() {
        
        let model: RoadSignClassifier = {
            do {
                let config = MLModelConfiguration()
                return try RoadSignClassifier(configuration: config)
            } catch let error {
                print(error)
                fatalError("Couldn't clasify")
            }
        }()
        
        let currentImageName = picData
        guard let image = UIImage(data: currentImageName),
              let resizedImage = image.resizeImageTo(size: CGSize(width: 224, height: 224)),
              let buffer = resizedImage.convertToBuffer()
        else {
            return
        }
        
        let output = try? model.prediction(image: buffer)
        
        if let output = output {
            print("output: ", output.classLabelProbs.sorted(by: >))
            
            let results: Array<Dictionary<String, Double>.Element>.SubSequence = output.classLabelProbs.sorted {$0.1>$1.1}.prefix(1)
            print("results: ", results)
            
            let result: String = results.first?.key.description ?? ""
            print("result: ", result)
            
            
            self.classificationLabel = Labels.init(rawValue: result)
            print("label: ",  classificationLabel?.description)
        }
    }
}
