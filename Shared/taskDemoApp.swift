//
//  taskDemoApp.swift
//  Shared
//
//  Created by Misael Landero on 26/09/21.
//

import SwiftUI

@main
struct taskDemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
