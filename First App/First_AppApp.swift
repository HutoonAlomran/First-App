//
//  First_AppApp.swift
//  First App
//
//  Created by Hutoon AlOmran on 23/03/1445 AH.
//

import SwiftUI

@main
struct First_AppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
