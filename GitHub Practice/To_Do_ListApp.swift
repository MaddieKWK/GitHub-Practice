//
//  To_Do_ListApp.swift
//  To Do List
//
//  Created by Stef Yaegel on 5/14/23.
//

import SwiftUI

@main
struct To_Do_ListApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)

        }
    }
}
