//
//  Assignment.swift
//  GitHub Practice
//
//  Created by Renee Lee on 6/14/23.
//

import SwiftUI

struct Assignment: View {
    @State private var name = "Enter Here"
    @State private var min = "Enter in minutes"
    @State private var time = "Enter Here"
    @State private var stop = "Enter like this: 25 min work - 5 min break"
    @State private var textTitle = "Assignment Name"
    var body: some View {
        NavigationView {
            
            
            ZStack {
                Image("background")
                VStack {
                    HStack {
                        NavigationLink(destination: ContentView()) {Text("Back") }
                        
                        Text("Assignment Details")
                            .font(.custom("Amatic SC Bold", size: 45))
                            .fontWeight(.heavy)
                            .padding()
                    }
                   
                    
                    Text(textTitle)
                    
                    
                    TextField("", text: $name)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                        .border(Color.black, width: 1)
                        .padding()
                    
                    
                    Text("Time it takes to complete assigment")
                        .font(.headline)
                        .foregroundColor(Color(hue: 0.395, saturation: 1.0, brightness: 0.017))
                    
                    TextField("", text: $min)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                        .border(Color.black, width: 1)
                        .padding()
                    
                    Text("Complete assignment by-")
                        .font(.headline)
                    
                    TextField("", text: $time)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                        .border(Color.black, width: 1)
                        .padding()
                    
                    
                    Text("Break Times")
                        .font(.headline)
                    
                    TextField("", text: $stop)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                        .border(Color.black, width: 1)
                        .padding()
                    
                    
                    Text("Submit")
                        .font(.custom("Amatic SC Bold", size: 27))
                        .padding()
                        .frame(width: 150.0, height: 45.0)
                        .background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(16)
                    
                    
                        .padding()
                }
                
            }
                
            }
        }
        
    }
    
    
    
    
    
    
    
    struct Assignment_Previews: PreviewProvider {
        static var previews: some View {
            Assignment()
        }
    }
    

