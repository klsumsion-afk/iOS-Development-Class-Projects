//
//  SwiftUIView.swift
//  SOLIDS
//
//  Created by Karigan Sumsion on 11/18/25.
//

//Single Responsibility

import SwiftUI

class Playlist {
    var music: [Music]
    
    init(music: [Music]) {
        self.music = music
    }
}

protocol Music {
    func play()
}

//Open/Closed

class MusicPlayer {
    func play(music: Music) {
        music.play()
    }
}

// Liskov princple

class ClassicalMusic: Music {
    func play() {
        print("Playing classical music")
    }
}

class MozartMusic: ClassicalMusic {
    override func play() {
        print("Playing mozart music")
    }
}

//Interface Segregation

protocol MultipleSongPlayerProtocol {
    func listUpcomingMusic()
}

struct PlaylistPlayer: MultipleSongPlayerProtocol {
    func listUpcomingMusic() {
        print("jalsfjl")
    }
}

struct SingleSongPlayer {
    func play() {
        
    }
}

//Dependency Injection

struct MusicPlayerViewModel {
    var text: String
}

struct MusicPlayerView: View {
    var viewModel: MusicPlayerViewModel
    
    var body: some View {
        Text(viewModel.text)
    }
}

MusicPlayerView(viewModel: MusicPlayerViewModel(text: "Hello World"))
