//
//  Timer.swift
//  GitHub Practice
//
//  Created by Renee Lee on 6/14/23.
//

import SwiftUI

struct Timer: View {
    @State var countDownTimer = 5
    @State var timerRunning = false
    let timer = Timer.publish(every: 1, on: .main, in: .common) .autoconnect()
    var body: some View {
        
        VStack {
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
                
                Button("Reset") {
                    countDownTimer = 5
                }
            }
        }
       
    }
}

struct Timer_Previews: PreviewProvider {
    static var previews: some View {
        Timer()
    }
}
