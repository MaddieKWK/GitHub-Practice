//
//  ToDos.swift
//  GitHub Practice
//
//  Created by Renee Lee on 6/14/23.
//

import SwiftUI

struct ToDos: View {
    var body: some View {
        VStack {
            Text("To Do List")
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)


        }
    }
}

struct ToDos_Previews: PreviewProvider {
    static var previews: some View {
        ToDos()
    }
}
