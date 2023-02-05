//
//  ExpressPackageTrackerApp.swift
//  ExpressPackageTracker
//
//  Created by MOON on 2023/02/05.
//

import SwiftUI

@main
struct ExpressPackageTrackerApp: App {
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ExpressCompanyListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
