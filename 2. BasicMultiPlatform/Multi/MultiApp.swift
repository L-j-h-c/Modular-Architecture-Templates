//
//  MultiApp.swift
//  Multi
//
//  Created by Junho Lee on 2023/02/06.
//

import SwiftUI

@main
struct MultiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
