//
//  taskDemoApp.swift
//  Shared
//
//  Created by Misael Landero on 26/09/21.
//

import SwiftUI

@main
struct taskDemoApp: App {

    //Coreda Data
        @StateObject var coreData = PersistentCloudKitContainer()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, coreData.persistentContainer.viewContext)
        }
    }
}
