//
//  ToDos.swift
//  GitHub Practice
//
//  Created by Renee Lee on 6/14/23.
//

import SwiftUI

struct ToDos: View {
    @State private var one = "Assignment One"
    @State private var two = "Assignment Two"
    @State private var three = "Assignment Three"
    @State private var four = "Assignment Four"
    var body: some View {
        ZStack {
            
            GeometryReader { geo in
            Image("Back")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            }
            
        VStack {
            Text("To Do List")
                .font(.custom("Amatic SC Bold", size: 40))                .fontWeight(.semibold)
            
            Text("Add any assignments or tests you have to study for!")
                .font(.custom("Amatic SC Bold", size: 21));            TextField("", text: $one)
                .multilineTextAlignment(.center)
                .font(.title2)
                .border(Color.black, width: 1)
                .padding()
            Button("Done with assignment") {
            }
            .font(.title3)
            .buttonStyle(.borderedProminent)
            .tint(.black)
            
            TextField("", text: $two)
                .multilineTextAlignment(.center)
                .font(.title2)
                .border(Color.black, width: 1)
                .padding()
            Button("Done with assignment") {
            }
            .font(.title3)
            .buttonStyle(.borderedProminent)
            .tint(.black)
            
            TextField("", text: $three)
                .multilineTextAlignment(.center)
                .font(.title2)
                .border(Color.black, width: 1)
                .padding()
            Button("Done with assignment") {
            }
            .font(.title3)
            .buttonStyle(.borderedProminent)
            .tint(.black)
            
            TextField("", text: $four)
                .multilineTextAlignment(.center)
                .font(.title2)
                .border(Color.black, width: 1)
                .padding()
            Button("Done with assignment") {
            }
            .font(.title3)
            .buttonStyle(.borderedProminent)
            .tint(.black)
            
            }
            
           
            
            
        }
        
        
     }
    }


struct ToDos_Previews: PreviewProvider {
    static var previews: some View {
        ToDos()
    }
}
