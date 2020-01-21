//
//  CoreDataStack.swift
//  JournalSwiftUI
//
//  Created by Ian Hall on 1/20/20.
//  Copyright © 2020 Ian Hall. All rights reserved.
//

import Foundation


import Foundation
import CoreData

class CoreDataStack {
    
    static let container: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "JournalSwiftUI")
        container.loadPersistentStores(){ (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("unresolved error\(error), \(error.userInfo)")
            }
        }
        return container
    }()
    static var context: NSManagedObjectContext {return container.viewContext}
}
