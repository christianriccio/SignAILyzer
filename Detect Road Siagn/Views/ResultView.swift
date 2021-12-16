//
//  ResultView.swift
//  Detect Road Siagn
//
//  Created by Christian Riccio on 14/12/21.
//

import SwiftUI
import AVFoundation

class SpeechSynthesizerDelegate: NSObject, AVSpeechSynthesizerDelegate {
    
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didStart utterance: AVSpeechUtterance) {
        print("I started speaking")
    }
    
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance) {
        print("I stopped speaking")
    }
}

struct ResultView: View {
    @ObservedObject var camera: CameraModel = CameraModel.instance
    @State private var isPlay: Bool = false

    let speechSynthesizer = AVSpeechSynthesizer()
    let speechSynthesizerDelegate = SpeechSynthesizerDelegate()
    
    func readAllText(){
        let uttTitle = AVSpeechUtterance(string: self.camera.classificationLabel?.description ?? "No information to give")
        let uttMessage = AVSpeechUtterance(string: self.camera.classificationLabel?.message ?? "No information to give")
        
        uttTitle.voice = AVSpeechSynthesisVoice(language: "en-US")
        uttMessage.voice = AVSpeechSynthesisVoice(language: "en-US")
        
        speechSynthesizer.speak(uttTitle)
        speechSynthesizer.speak(uttMessage)
        
    }

    init() {}
    
    var body: some View {
        
        VStack{
        Image(uiImage: UIImage(data: camera.picData)!)
                .resizable()
                .scaledToFit()
                .cornerRadius(16)
                .padding(.vertical)
                .frame(width: 300, height: 300)

            HStack(alignment: .center){
                Text(self.camera.classificationLabel?.description ?? "Retake the photo")
                    .font(.title)
                    .bold()
                    .padding(.horizontal)
                Spacer()
                Button(action: {
                    readAllText()
                    isPlay.toggle()
                    
                }, label: {
                    Image(systemName: "play.fill")})
                    .font(.largeTitle)
                Spacer()
            }
            Text(self.camera.classificationLabel?.message ?? "No information to give")
                .font(.title2)
                .padding(.all)
            Spacer()
              
        }
        .onAppear {
            self.speechSynthesizer.delegate = speechSynthesizerDelegate
        }
    }
}
