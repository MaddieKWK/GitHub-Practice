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
        @State private var timeTitle = "Time it takes to complete assignment"
        @State private var completeTitle = "Complete assignment by"
        @State private var breakTitle = "Break Times"
        
        var body: some View {
    //        NavigationStack {
                ZStack {
                    Image("background")
                    VStack {
                        
                        
                        Text("Assignment Details")
                            .font(.custom("Amatic SC Bold", size: 43))                            .fontWeight(.heavy)
                            .foregroundColor(Color(hue: 0.284, saturation: 0.291, brightness: 0.763))
                            .padding()
                        
                        Text(textTitle)
                            .font(.custom("Amatic SC Bold", size: 21))
                        TextField("", text: $name)
                            .multilineTextAlignment(.center)
                            .font(.title2)
                            .border(Color.white, width: 1)
                            .padding()
                            
                        
                        Text(timeTitle)
                            .font(.custom("Amatic SC Bold", size: 21))                               .foregroundColor(Color(hue: 0.395, saturation: 1.0, brightness: 0.017))
                        
                        TextField("", text: $min)
                            .multilineTextAlignment(.center)
                            .font(.title2)
                            .border(Color.white, width: 1)
                            .padding()
                           
                        Text(completeTitle)
                            .font(.custom("Amatic SC Bold", size: 21))
                        
                        TextField("", text: $time)
                            .multilineTextAlignment(.center)
                            .font(.title2)
                            .border(Color.white, width: 1)
                            .padding()
                           
                        
                        Text(breakTitle)
                            .font(.custom("Amatic SC Bold", size: 21))
                        TextField("", text: $stop)
                            .multilineTextAlignment(.center)
                            .font(.title2)
                            .border(Color.white, width: 1)
                            .padding()
                           
                        
                        
                        Button("Submit") {
                            textTitle = "\(name)"
                        
                            timeTitle = "Try to complete assignment in \(min)"
                            completeTitle = "by \(time)"
                            breakTitle = "Here is your break scuedule: \(stop)"
                        }

                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(.black)
                        
                        
                        
                    
                    }
    //
                                
                    
                .padding()
                        }
                    }
                    
                    
                }
            
            
            
            
            
            
        
        
        
    
    
    
    struct Assignment_Previews: PreviewProvider {
        static var previews: some View {
            Assignment()
        }
    }
    

