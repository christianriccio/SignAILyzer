# SignAILizer

SignAILizer is a working app project that I developed for NC2 - Vin Brulè at the Apple Developer Academy. The Idea of the challenge was to learn from the success/failure of other App developers. For this reason I inspired SignAILizer to the one that you can find at [here](https://apps.apple.com/it/app/detect-road-sign/id1561498437). Although SignAILizer in this fisrt version is able to classify on 59 classes of Italian traffic signs, the prediction on some of them is not accurate, this is due to the lack of training data at hand. In ML data are crucial, but data retrieving is an hard step, I lost days to found an available DB of immages of Italian roads signs.

Tha first time the you will install the app it will ask to allow for camera permission and then a camera view will appear. After taking the picture of a traffic signal (try to be as close as possible to the signal, but not too close :') !) the user will have to option:
- to retake another picture if not satisied;
- classify the signal identified.

The results of the classification will appear immediatly with the taken picture the name of the signal which the ML model predict and a description of it. Then, is possible to click a play button and the text will be automatically red from the iphone to the user. 

The app does not require any internet connection to work and it only weights 4.2 Mb.

The ML model runs locally on the iphone, and it alone weight less than 1 Mb !!!

## Objectives of the challenge

- Learn individually everything I need to achieve my developers' goals;
- Select an App available on the App Store; 
- Identify the strengths and weaknesses of this app
- Based on what I want to learn and your path, choose what I want to reproduce as it is and what is convenient to change.

# Act 
To do so, I decided to reshape the above existing app on the App store responsible of classify accross 4k traffic signals belonging to different countries. The challenge lasted for 11 days, during which I: 

- Found a project and defined my challenge statement and learning objectives;
- Created the app logo (you can find it into the app logo icons folder);
- Ideated the lo-fi/hi-fi prototype;
- Wrote a lot of code :D.

# Technology involved

- SwiftUI for the blueprint and the interface of the app;
- CreateML to build-up the model 
- CoreML to integrate it into the app;
- AVFoundation which allowed me to:
    - Integrate the camera view into the app;
    - Synthetize the text to speech.


