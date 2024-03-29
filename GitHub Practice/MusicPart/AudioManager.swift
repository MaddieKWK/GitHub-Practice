//
//  AudioManager.swift
//  GitHub Practice
//
//  Created by Renee Lee on 6/16/23.
//

import AVKit

final class AudioManager: ObservableObject {
    //    static let shared = AudioManager()
    var player: AVAudioPlayer?
    
    func startPlayer(track: String, isPreview: Bool = false) {
        
        guard let url = Bundle.main.url(forResource: track, withExtension: "mp3") else {
            print("Resource not found: \(track)")
            return
        }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            player = try AVAudioPlayer(contentsOf: url)
            
            if isPreview {
                player?.prepareToPlay()
            } else {
                player?.play()
            }
        } catch {
            print("Fail to initialize player", error)
        }
    }
    
    func playPause() {
        guard let player = player else {
            print("Instance of audio player not found")
            return
        }
        if player.isPlaying {
            player.pause()
        } else {
            player.play()
        }
    }
}

