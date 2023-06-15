//
//  ToDoItem.swift
//  To Do List
//
//  Created by Stef Yaegel on 5/14/23.
//

import Foundation

class ToDoItem: Identifiable {
    
    var id = UUID()
    var title = ""
    var isImportant = false
    
    init(title: String, isImportant: Bool = false) {
            self.title = title
            self.isImportant = isImportant
        }
    
}


