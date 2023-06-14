//
//  ContentView.swift
//  GitHub Practice
//
//  Created by neil webb on 6/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(
                red: 242/255, green: 201/255, blue: 213/255).ignoresSafeArea()
            VStack (alignment: .leading, spacing: 20.0) {
                Text("Welcome to Study Central!   ")
                    .font(.custom("American Typewriter", size: 45))
                    .foregroundColor(Color(hue: 0.287, saturation: 0.298, brightness: 0.817))
                    .multilineTextAlignment(.center)
              
                HStack(alignment: .center) {
                    
                    
                    Image("book")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100.0, height: 100.0, alignment: .center)
                        .cornerRadius(15)
                    
                    Text("The fun, safe place for studying")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    
                }
            }

        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
