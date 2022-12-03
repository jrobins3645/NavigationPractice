//
//  My Mood.swift
//  FeelWell
//
//  Created by Paige Fields on 11/28/22.
//

import SwiftUI


struct Journal: View {
    
    @Environment(\.managedObjectContext) var context
    
    @FetchRequest(fetchRequest: JournalEntry.getAllJournalEntries())
        var entries:FetchedResults<JournalEntry>
    
    @State var text: String = ""
    var body: some View {
        NavigationView{
            ZStack{
                
                List{
                    Section(header: Text("New Journal Entry")) {
                        HStack{
                            TextField("Enter New Journal Entry", text: $text)
                            Button(action: {
                                
                                if !text.isEmpty {
                                    
                                    let newEntry = JournalEntry(context:context)
                                    newEntry.name = text
                                    newEntry.createdAt = Date()
                                    
                                    do {
                                        try context.save()
                                    }
                                    catch{
                                        print(error)
                                    }
                                    text = ""
                                }
                            }, label: {
                                Text("Save")
                            })
                        }
                    }
                    Section {
                        ForEach(entries) { JournalEntry in
                            VStack(alignment: .leading) {
                                Text(JournalEntry.name!)
                                    .font(.headline)
                                Text("\(JournalEntry.createdAt!)")
                            }
                        }.onDelete(perform: { indexSet in guard let index = indexSet.first else {
                            return
                        }
                            let itemToDelete = entries[index]
                            context.delete(itemToDelete)
                            do {
                                try context.save()
                            }
                            catch {
                                print(error)
                            }
                        })
                    }
                }
//                
                
            }
        }
    }
}
struct Journal_Previews: PreviewProvider {
    static var previews: some View {
        Journal()
    }
}
