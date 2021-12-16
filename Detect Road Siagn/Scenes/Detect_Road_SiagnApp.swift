//
//  Detect_Road_SiagnApp.swift
//  Detect Road Siagn
//
//  Created by Christian Riccio on 07/12/21.
//

import SwiftUI

@main
struct Detect_Road_SiagnApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                
        }
    }
}
