//
//  HStateApp.swift
//  HState
//
//  Created by Karavella on 06/09/22.
//

import SwiftUI

@main
struct HStateApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
