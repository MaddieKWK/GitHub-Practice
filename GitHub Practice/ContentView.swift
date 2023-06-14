//
//  ContentView.swift
//  GitHub Practice
//
//  Created by neil webb on 6/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        if #available(iOS 16.0, *) {
            NavigationStack {
                
                ZStack {
                    Color(
                        red: 242/255, green: 201/255, blue: 213/255).ignoresSafeArea()
                    VStack (alignment: .leading, spacing: 20.0) {
                        Text("Welcome to Study Central!   ")
                            .font(.custom("Amatic SC", size: 45))
                            .foregroundColor(Color(hue: 0.287, saturation: 0.209, brightness: 0.793))
                            .multilineTextAlignment(.center)
                        
                        HStack(alignment: .center) {
                            
                            
                            Image("book")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100.0, height: 100.0, alignment: .center)
                                .cornerRadius(15)
                            
                            Text("The fun, safe place for studying")
                                .font(.title2)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                            
                        }
                        NavigationLink(destination: Music()) {
                            Text("Study Music                                             ")
                                .font(.title2)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                            
                        NavigationLink(destination: ToDos()) {
                                Text("To Dos                                                       ")
                                    .font(.title2)
                                    .padding()
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                        }
                        
                        
                        NavigationLink(destination: Timer()) {
                                Text("Study Timers                                           ")
                                    .font(.title2)
                                    .padding()
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Assignment()) {
                                Text("Assignment Details                               ")
                                    .font(.title2)
                                    .padding()
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Quotes()) {
                                Text("Motivational Quotes                              ")
                                    .font(.title2)
                                    .padding()
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Aboutus()) {
                                                        Text("About us                                                   ")
                                                            .font(.title2)
                                                            .padding()
                                                            .background(Color.blue)
                                                            .foregroundColor(.white)
                                                            .cornerRadius(10)
                                                }
                    }
                    
                }
            }
        } else {
            // Fallback on earlier versions
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
