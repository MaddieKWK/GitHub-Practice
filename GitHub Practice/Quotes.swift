//
//  Quotes.swift
//  GitHub Practice
//
//  Created by Renee Lee on 6/14/23.
//

import SwiftUI

struct Quotes: View {
    var body: some View {
        ZStack {
            GeometryReader { geo in
            Image("Wallpaper")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            }
        VStack {
            Text("Motivational quotes!")
                .font(.custom("Amatic SC Bold", size: 45))
                
            Text("If you are having trouble focusing, or just need some motivation, this is a great place to be!")
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .font(.custom("Amatic SC Bold", size: 28))
    
            
            Text("''Success is no accident. It is hard work, perseverance, learning, studying, sacrifice and most of all, love of what you are doing or learning to do.'' - Pelé, Brazillian pro footballer")
                .font(.custom("Amatic SC Bold", size: 23))                .foregroundColor(Color(hue: 0.892, saturation: 0.57, brightness: 0.794))
                .padding(10.0)
            
            
            
            
            

            
            
        }

      
    }
}
}
struct Quotes_Previews: PreviewProvider {
    static var previews: some View {
        Quotes()
    }
}
