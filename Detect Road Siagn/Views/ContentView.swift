//
//  ContentView.swift
//  Detect Road Siagn
//
//  Created by Christian Riccio on 07/12/21.
//

import SwiftUI
import CoreData
import CoreML

struct ContentView: View {
    
    @ObservedObject var cm: CameraModel = CameraModel.instance

    var body: some View {

        CameraView()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
