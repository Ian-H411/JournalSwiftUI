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
    
    func addEntry(title: String, body: String) {
        let newEntry = Entry(title: title, body: body)
        saveToPersistentStore()
        entries.append(newEntry)
    }
    
    func update(entry: Entry, title: String, body: String) {
        entry.title = title
        entry.body = body
        saveToPersistentStore()
    }
    
    func delete(entry: Entry) {
        if let moc = entry.managedObjectContext {
            moc.delete(entry)
            saveToPersistentStore()
        }
    }
    
    private func saveToPersistentStore() {
        if CoreDataStack.context.hasChanges {
            try? CoreDataStack.context.save()
        }
    }
    
    
}
