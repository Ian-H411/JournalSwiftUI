//
//  EntryController.swift
//  JournalSwiftUI2
//
//  Created by Ian Hall on 1/20/20.
//  Copyright © 2020 Ian Hall. All rights reserved.
//

import Foundation
import CoreData

class EntryController {
    
    static let shared = EntryController()
    
    var entries:[Entry] = []
    
    init() {
        let fetchRequest: NSFetchRequest<Entry> = Entry.fetchRequest()
        let moc = CoreDataStack.context
        entries = (try? moc.fetch(fetchRequest)) ?? []
    }
    
}
