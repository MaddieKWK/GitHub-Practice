//
//  Timer.swift
//  GitHub Practice
//
//  Created by Renee Lee on 6/14/23.
//

import SwiftUI

struct Clock: View {
    @State var countDownSecondTimer = 1500
    @State var timerIsRunning = true
    @State var countDownTimer = 300
    @State var timerRunning = true
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    func fireTimer() {
        print("Timer fired!")
    }
    let clock = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    func fireClock() {
        print("Clock fired!")
    }
    
    var body: some View {
        ScrollView {
                VStack(spacing: 20) {
        ZStack {
        
            Image("wallpaper2")
        
        VStack {
            Text("Study Timers")
                .font(.custom("Amatic SC Bold", size: 60));
            
            Text("These timers can help you stay on task, while helping you be productive. For every assignment or test, start off by working for 25 minutes you work, take a 5 minute break. Repeat this as many times as you want. Happy studying!")
                .foregroundColor(Color.white)
                .padding(.horizontal, 200.0)
                
            
            Text("5 minute Break Timer")
                .fontWeight(.bold)
                .font(.custom("Amatic SC Bold", size: 45))
                .foregroundColor(Color(hue: 0.898, saturation: 0.646, brightness: 0.661))
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
            Text("25 minute study timer")
                .fontWeight(.bold)
                .font(.custom("Amatic SC Bold", size: 45))
                .foregroundColor(Color(hue: 0.898, saturation: 0.646, brightness: 0.661))
           Text("\(countDownSecondTimer)")
                .onReceive(clock) { _ in
                    if countDownSecondTimer > 0 && timerIsRunning {
                        countDownTimer -= 1
                    } else {
                        timerIsRunning = false
                     }
                    }
                .font(.system(size: 80, weight: .bold))
                .opacity(0.80)
            
            HStack (spacing : 30) {
                Button("Start") {
                    timerIsRunning = true
                        
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.black)
                .font(.custom("Amatic SC Bold", size: 45))
                
                Button("Reset") {
                    countDownSecondTimer = 1500
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
    }
}


struct Timer_Previews: PreviewProvider {
    static var previews: some View {
       Clock()
    }
}
