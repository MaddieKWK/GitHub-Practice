//
//  ContentView.swift
//  To Do List
//
//  Created by Stef Yaegel on 5/14/23.
//

import SwiftUI

struct ToDoView: View {
    @Environment(\.managedObjectContext) var context
    
    private func deleteTask(offsets: IndexSet) {
            withAnimation {
                offsets.map { toDoItems[$0] }.forEach(context.delete)

                do {
                    try context.save()
                } catch {
                    print(error)
                }
            }
        }

    
    @FetchRequest(
            entity: ToDo.entity(), sortDescriptors: [ NSSortDescriptor(keyPath: \ToDo.id, ascending: false) ])
        
    var toDoItems: FetchedResults<ToDo>

    @State private var showNewTask = false

    
    var body: some View {
       
        List {
                ForEach (toDoItems) { toDoItem in
                       
                    if toDoItem.isImportant == true {
                        Text("‼️" + (toDoItem.title ?? "No title"))
                    } else {
                                        Text(toDoItem.title ?? "No title")
                    }
        
                    }
                .onDelete(perform: deleteTask)
            
        }
        .listStyle(.plain)


        
            VStack {
                HStack{
                    Text("To Do List")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                    Spacer()
                    
                    Button(action:  {
                        self.showNewTask = true
                    }) {
                        Text("+")
                            .font(.system(size: 40))
                    }
                }
                .padding()
                Spacer()
                
            }
        
            if showNewTask {
               ToDoView(showNewTask: $showNewTask, title: "", isImportant: false)
            }
        
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


