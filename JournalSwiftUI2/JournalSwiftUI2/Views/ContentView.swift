//
//  ContentView.swift
//  JournalSwiftUI2
//
//  Created by Ian Hall on 1/20/20.
//  Copyright © 2020 Ian Hall. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let entries = EntryController.shared.entries
        return List(entries) {entry in
            entryRow(entry: entry)
            
        }
    }
}
struct entryRow: View {
    var entry: Entry
    var body: some View {
        Text(entry.title ?? "")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
