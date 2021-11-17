//
//  JourneyAppApp.swift
//  Shared
//
//  Created by Francesco on 15/11/21.
//

import SwiftUI

@main
struct JourneyAppApp: App {
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}