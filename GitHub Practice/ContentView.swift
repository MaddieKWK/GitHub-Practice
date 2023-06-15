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
            NavigationView {
                
                ZStack {
                    Color(
                        red: 242/255, green: 201/255, blue: 213/255).ignoresSafeArea()
                    VStack (alignment: .center, spacing: 20.0) {
                        Text("Welcome to Study Central!   ")
                            .font(.custom("Amatic SC Bold", size: 45))
                            .foregroundColor(Color(hue: 0.353, saturation: 0.388, brightness: 0.405))
                            .multilineTextAlignment(.center)
                        
                        HStack(alignment: .center) {
                            
                            
                            Image("book")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100.0, height: 100.0, alignment: .center)
                                .cornerRadius(15)
                            
                            Text("The fun, safe place for studying")
                                .font(.custom("Amatic SC Bold", size: 30))
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        }
                        Spacer().frame(height: 60)
// Buttons setting starts from here
                        NavigationLink(destination: Music()) {
                            Text("Study Music                                            ")
                                .font(.custom("Amatic SC Bold", size: 25))
                                .padding()
                                .background(Color(red: 135/255, green: 158/255, blue: 123/255))
                            
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                            
                        NavigationLink(destination: ToDos()) {
                                Text("To Dos                                                    ")
                                    .font(.custom("Amatic SC Bold", size: 25))
                                    .padding()
                                    .background(Color(red: 135/255, green: 158/255, blue: 123/255))
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                        }
                        
                        
                        NavigationLink(destination: Clock()) {
                                Text("Study Timers                                          ")
                                    .font(.custom("Amatic SC Bold", size: 25))
                                    .padding()
                                    .background(Color(red: 135/255, green: 158/255, blue: 123/255))
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Assignment()) {
                                Text("Assignment Details                               ")
                                    .font(.custom("Amatic SC Bold", size: 25))
                                    .padding()
                                    .background(Color(red: 135/255, green: 158/255, blue: 123/255))
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Quotes()) {
                                Text("Motivational Quotes                             ")
                                    .font(.custom("Amatic SC Bold", size: 25))
                                    .padding()
                                    .background(Color(red: 135/255, green: 158/255, blue: 123/255))
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Aboutus()) {
                                                        Text("About us                                                ")
                                                            .font(.custom("Amatic SC Bold", size: 25))
                                                            .padding()
                                                            .background(Color(red: 135/255, green: 158/255, blue: 123/255))
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
