//
//  MusicViewModel.swift
//  GitHub Practice
//
//  Created by Renee Lee on 6/16/23.
//

import Foundation

final class MusicViewModel: ObservableObject {
    private(set) var music: Music
    
    init(music: Music) {
        self.music = music
    }
}
struct Music {
    let id = UUID()
    let title: String
    let description: String
    let duration: TimeInterval
    let track: String
    let image: String
    
    static let data = Music(title: "camping in rain", description: "Relaxing background music.", duration: 145, track: "music1", image: "Night")
}
