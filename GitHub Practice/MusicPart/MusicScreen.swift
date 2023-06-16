//
//  Music.swift
//  GitHub Practice
//
//  Created by neil webb on 6/14/23.
//

import SwiftUI

struct MusicScreen: View {
    var body: some View {
        MusicView(musicVM: MusicViewModel(music: Music.data))
    }
}

struct MusicScreen_Previews: PreviewProvider {
    static var previews: some View {
        MusicScreen()
            .environmentObject(AudioManager())
    }
}
