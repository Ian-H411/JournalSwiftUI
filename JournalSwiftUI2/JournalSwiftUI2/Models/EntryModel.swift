//
//  EntryModel.swift
//  JournalSwiftUI2
//
//  Created by Ian Hall on 1/20/20.
//  Copyright © 2020 Ian Hall. All rights reserved.
//

import Foundation
import CoreData
extension Entry: Identifiable {
    
    convenience init(title: String, body: String, date: Date = Date(), moc: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: moc)
        self.title = title
        self.body = body
        self.date = date
    }
}
