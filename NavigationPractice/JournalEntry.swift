//
//  JournalEntry.swift
//  NavigationPractice
//
//  Created by Jeff on 12/1/22.
//

import Foundation
import CoreData

class JournalEntry: NSManagedObject, Identifiable {
    @NSManaged var name: String?
    @NSManaged var createdAt: Date?
    
}

extension JournalEntry {
    static func getAllJournalEntries() -> NSFetchRequest<JournalEntry> {
        let request: NSFetchRequest<JournalEntry> =
        JournalEntry.fetchRequest() as! NSFetchRequest<JournalEntry>
        
        let sort = NSSortDescriptor(key: "createdAT", ascending: true)
        request.sortDescriptors = [sort]
        
        return request
    }
}
