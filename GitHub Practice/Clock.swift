//
//  Timer.swift
//  GitHub Practice
//
//  Created by Renee Lee on 6/14/23.
//

import SwiftUI

struct Clock: View {
    @State var countDownTimer = 300
    @State var timerRunning = true
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    func fireTimer() {
        print("Timer fired!")
    }
    var body: some View {
        ZStack {
        
            Image("wallpaper2")
        
        VStack {
            Text("5 minute Break Timer")
                .fontWeight(.bold)
                .font(.custom("Amatic SC Bold", size: 45))
           Text("\(countDownTimer)")
                .onReceive(timer) { _ in
                    if countDownTimer > 0 && timerRunning {
                        countDownTimer -= 1
                    } else {
                        timerRunning = false
                     }
                    }
                .font(.system(size: 80, weight: .bold))
                .opacity(0.80)
            
            HStack (spacing : 30) {
                Button("Start") {
                    timerRunning = true
                        
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.black)
                .font(.custom("Amatic SC Bold", size: 45))
                
                Button("Reset") {
                    countDownTimer = 300
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.black)
                .font(.custom("Amatic SC Bold", size: 45))
            }
        }
        }
    }
}

struct Timer_Previews: PreviewProvider {
    static var previews: some View {
       Clock()
    }
}
