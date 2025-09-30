import UIKit

var greeting = "Hello, playground"

/// Init
//init()

//// Core mutation
//func add(_ song: Song)
//func remove(at index: Int)
//func clear()
//
//// Querying / reading
//var count: Int { get }
//func allSongs() -> [Song]
//func totalDuration() -> Int
//func currentSong() -> Song?
//
//// Playback navigation
//func play(at index: Int) -> Song?
//func playNext() -> Song?
//func playPrevious() -> Song?
//
//// Shuffle
//func shuffle()

struct Song {
    var title: String
    var author: String
    var duration: Double
}

let bleep = Song(title: "BLEEP", author: "Stray Kids", duration: 2.47)
let ceremony = Song(title: "CEREMONY", author: "Stray Kids", duration: 2.43)
let creed = Song(title: "CREED", author: "Stray Kids", duration: 2.40)
let mess = Song(title: "MESS", author: "Stray Kids", duration: 3.28)
let inMyHead = Song(title: "In My Head", author: "Stray Kids", duration: 2.55)
let halfTime = Song(title: "Half Time", author: "Stray Kids", duration: 2.49)
let phoenix = Song(title: "Phoenix", author: "Stray Kids", duration: 3.01)
let ghost = Song(title: "Ghost", author: "Stray Kids", duration: 2.32)
let zero = Song(title: "0801", author: "Stray Kids", duration: 3.23)
let ceremonyFestival = Song(title: "CEREMONY (Festival Version)", author: "Stray Kids", duration: 2.51)
let ceremonyEnglish = Song(title: "CEREMONY (English Version)", author: "Stray Kids", duration: 2.43)
let theVillageBride = Song(title: "The Village Bride", author: "Kevin Penkin", duration: 4.30)
let chikyu = Song(title: "CHIKYU", author: "Kevin Penkin", duration: 0.43)
let aDesertOfTwoSons = Song(title: "A Desert of Two Sons", author: "Kevin Penkin", duration: 1.18)
let buePluckAndBow = Song(title: "Bue, Pluck & Bow", author: "Kevin Penkin", duration: 3.04)
let izuma = Song(title: "IZUMA", author: "Kevin Penkin", duration: 1.16)
let aFlockOfX = Song(title: "A Flock of X-Wings Descend Into a Mountain's Garden", author: "Kevin Penkin" , duration: 2.14)
let requiemForBlasters = Song(title: "Requiem for Blasters", author: "Kevin Penkin", duration: 1.21)
let maginaXForce = Song(title: "MAGINA x FORCE", author: "Kevin Penkin", duration: 2.21)
let postlude = Song(title: "Postlude", author: "Kevin Penkin", duration: 0.57)
let composerDiaries = Song(title: "Composer Diaries: Children of Magina", author: "Kevin Penkin", duration: 6.37)

let songs = [bleep, ceremony, creed, mess, inMyHead, halfTime, phoenix, ghost, zero, ceremonyFestival, ceremonyEnglish, theVillageBride, chikyu, aDesertOfTwoSons, buePluckAndBow, izuma, aFlockOfX, requiemForBlasters, maginaXForce, postlude, composerDiaries]

class Favorites {
    var title: String
    var author: String
//    var currentlyPlaying: Song?
    var currentIndex: Int = 0
    var songs: [Song] = [ ]
    
    var count: Int {
        songs.count
    }
    
    init(title: String, author: String) {
        self.title = title
        self.author = author
    }
    
    func add(_ song: Song) {
        songs.append(song)
    }
    func remove(at index: Int) {
        songs.remove(at: index)
    }
    func clear() {
        songs.removeAll()
    }
    func allSongs() -> [Song] {
        return songs
    }
    func totalDuration() -> Double {
        var totalDuration = 0.0
        for song in songs {
            totalDuration += song.duration
        }
        return totalDuration
    }
    func currentSong() -> Song? {
        return songs[currentIndex]
    }
    func play(at index: Int) -> Song? {
        currentIndex = index
        let nextSong = songs[index]
        print("Now Playing: \(nextSong.title)")
        return nextSong
    }
    func playNext() -> Song? {
        var nextIndex = currentIndex + 1
        if nextIndex == songs.count { // last song is playing
            nextIndex = 0
        }
        currentIndex = nextIndex
        return songs[nextIndex]
    }
    
    func playPrevious() -> Song? {
        var previousIndex = currentIndex - 1
        if previousIndex < 0 {
            previousIndex = 0
        }
        currentIndex = previousIndex
        return songs[previousIndex]
    }
    
    func shuffle() {
        for index in 0... {
            songs.shuffled()
        }
    }
}

var favorite = Favorites(title: "Favorites", author: "Myself")

favorite.add(bleep)
favorite.add(ceremony)
favorite.add(creed)

favorite.play(at: 2)
favorite.playPrevious()
favorite.playPrevious()
favorite.playPrevious()



