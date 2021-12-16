//
//  CameraView.swift
//  Detect Road Siagn
//
//  Created by Christian Riccio on 14/12/21.
//

import AVFoundation
import CoreML
import SwiftUI

struct CameraView: View{
    
    @ObservedObject var camera: CameraModel = CameraModel.instance
    
    @State private var sheetIsPresented: Bool = false
    
    var body: some View{
        ZStack {
            CameraPreview(camera: camera)
                .ignoresSafeArea(.all, edges: .all)
            VStack {
                
                
                Spacer()
                
                HStack {
                    if camera.isTaken{
                        
                        Button(action: {
                            camera.classifyImage()
                            
                            let temp: UIImage? = UIImage(data: camera.picData)
                            
                            if temp != nil {
                                sheetIsPresented.toggle()
                            }
                        }, label: {
                            Text("Classify")
                                .foregroundColor(.black)
                                .fontWeight(.semibold)
                                .padding(.vertical, 10)
                                .padding(.horizontal,20)
                                .background(Color.white)
                                .clipShape(Capsule())
                        }).padding(.leading)
                        Spacer()
                        if camera.isTaken {
                            HStack{
                                Spacer()
                                Button(action: camera.reTake, label: {
                                    VStack {
                                        
                                    Image(systemName: "arrow.triangle.2.circlepath.camera").foregroundColor(.black)
                                        .padding()
                                        .background(Color.white)
                                        .clipShape(Circle())
                                    }
                                })
                                    .padding(.trailing, 10)
                            }
                        }
                                       
                        
                        Spacer()
                    }else{
                        VStack{
                            Text("Find a traffic sign")
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                                .padding([.vertical,.bottom], 10)
                                .padding(.horizontal,20)
                                .background(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                                .opacity(0.9)
                        
                        Button(action: camera.takePic, label: {
                                ZStack{
                                    Circle().fill(Color.white).frame(width: 60, height: 60)
                                    Circle().stroke(Color.white, lineWidth: 3).frame(width: 75, height: 75)
                                }
                            
                        })
                                .frame(width: 75, height: 75)
                    }
                    }
                }
//                .frame(height: 110)
            }
        }
        .onAppear(perform: {
            camera.Check()
        })
        .sheet(isPresented: self.$sheetIsPresented){
            ResultView()
            
        }
    }
}

struct CameraPreview: UIViewRepresentable {
    @ObservedObject var camera: CameraModel
    
    func makeUIView(context: Context) ->  UIView {
        let view = UIView(frame: UIScreen.main.bounds)
        camera.preview = AVCaptureVideoPreviewLayer(session: camera.session)
        camera.preview.frame = view.frame
        camera.preview.videoGravity = .resizeAspectFill
        view.layer.addSublayer(camera.preview)
        
        camera.session.startRunning()
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
}
