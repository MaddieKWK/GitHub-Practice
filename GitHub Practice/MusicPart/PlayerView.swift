//
//  PlayerView.swift
//  GitHub Practice
//
//  Created by Renee Lee on 6/16/23.
//

import SwiftUI

struct PlayerView: View {
    @EnvironmentObject var audioManager: AudioManager
    var musicVM: MusicViewModel
    var isPreview: Bool = false
    @State private var value: Double = 0.0
    @State private var isEditing: Bool = false
    @Environment(\.dismiss) var dismiss
    
    let timer = Timer
        .publish(every: 0.5, on: .main, in: .common)
        .autoconnect()

    var body: some View {
        ZStack {
            Image(musicVM.music.image)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea()
            
            Rectangle()
                .background(.thinMaterial)
                .opacity(0.17)
                .ignoresSafeArea()
            
            VStack(spacing: 32){
                
                HStack {
                    Button{
                      dismiss()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 36))
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
   //CHANGE HERE!!!!!!
                Text(musicVM.music.title)
                    .font(.custom("Amatic SC Bold", size: 60))
                    .foregroundColor(.white)
                
                Spacer()
                
                if let player =
                    audioManager.player {
                    
                    VStack(spacing: 5) {
                        Slider(value: $value, in: 0...player.duration) {
                            editing in
                            
                            print("editing", editing)
                            isEditing = editing
                            
                            if !editing {
                                player.currentTime = value
                            }
                        }
                        .accentColor(.white)
                        
                        HStack{
                            Text(DateComponentsFormatter.positional.string(from: player.currentTime) ?? "0:00")
                            
                            Spacer()
                            
                            Text(DateComponentsFormatter.positional.string(from: player.duration - player.currentTime) ?? "0:00")
                        }
                        .font(.caption)
                        .foregroundColor(.white)
                    }
                    
                    HStack{
                        PlaybackControlButton(systemName: "repeat") {
                            
                        }
                        
                        Spacer()
                        
                        PlaybackControlButton(systemName: "gobackward.10") {
                            
                        }
                        
                        Spacer()
                        
                        PlaybackControlButton(systemName: player.isPlaying ?  "pause.circle.fill" : "play.circle.fill", fontSize: 44) {
                            audioManager.playPause()
                        }
                        
                        Spacer()
                        
                        PlaybackControlButton(systemName: "goforward.10") {
                            
                        }
                        
                        Spacer()
                        
                        PlaybackControlButton(systemName: "stop.fill") {
                            
                        }
                    }
                }
            }
            .padding(20)
        }
        .onAppear {
   //    AudioManager.shared.startPlayer(track: musicVM.music.track, isPreview: isPreview)
            audioManager.startPlayer(track: musicVM.music.track, isPreview: isPreview)
        }
        .onReceive(timer) { _ in
            guard let player = audioManager.player else { return }
            value = player.currentTime
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static let musicVM = MusicViewModel(music: Music.data)
    static var previews: some View {
        PlayerView(musicVM: musicVM, isPreview: true)
            .environmentObject(AudioManager())
    }
}
