# SignAILizer

SignAILizer is a working app project that I developed for NC2 - Vin Brulè at the Apple Developer Academy. The Idea of the challenge was to learn from the success/failure of other App developers. For this reason I inspired SignAILizer to the one that you can find at [here](https://apps.apple.com/it/app/detect-road-sign/id1561498437). Although SignAILizer in this fisrt version is able to classify on 59 classes of Italian traffic signs, the prediction on some of them is not accurate, this is due to the lack of training data at hand. In ML data are crucial, but data retrieving is an hard step, I lost days to found an available DB of immages of Italian roads signs.

Tha first time the you will install the app it will ask to allow for camera permission and then a camera view will appear. After taking the picture of a traffic signal (try to be as close as possible to the signal, but not too close :') !) the user will have to option:
- to retake another picture if not satisied;
- classify the signal identified.

The results of the classification will appear immediatly with the taken picture the name of the signal which the ML model predict and a description of it. Then, is possible to click a play button and the text will be automatically red from the iphone to the user. 

The app does not require any internet connection to work and it only weights 4.2 Mb.

The ML model runs locally on the iphone, and it alone weight less than 1 Mb !!!

![alt text](https://github.com/[christianriccio]/[SignAILizer]/blob/[main]/IMG_0027.PNG?raw=true)

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


### Bugs

There are some bugs: 
 - The first time you install the app in the white screen view a text that should appera in the camera view will appear;
 - The click button of the camera sometimes don't capure any picture and this will not allow to classify it because the model will not receive data ( before the app creshed but i fixed this) and to do so you have to retake the picture. Whene you are in sound mode on the iphone if you hear the click sound the picture is taken !!!
 - The model is not accurate but this is due to the lack of data on which the classification algorithm has been trained

### Future improvements 
- Resolve the above bugs :)
- Retrive more and more picture on which re-train the model to improve it 
- Woring on more classes of Italina traffic signs 
- Itegrate with the traffic sign on other countries
- Working with cloudKit and coreData
- Based on the geo-localization of the iphone, a well defined clasification model will be used
- Insert a zoom button in the camera view

# Usage
Feel free to use the app and take insipiration from this project (but please cite me smohow :) ). For any suggestion or curiosity or technical stuff feel free to reach me by: 

- e-mail: christian.riccio@unina.it
- LinkedIn: https://www.linkedin.com/in/christian-riccio-830864169/

To use the app download the whole project, open it with Xcode (v.13.0 +) and made the build on the iphone :D.

You will have a (powerful) ML model in your pocket ready to classify Italian traffic signs, which will run locally on the Iphone's neural engine :D. 
