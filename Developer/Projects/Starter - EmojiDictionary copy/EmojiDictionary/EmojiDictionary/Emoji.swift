//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by Jane Madsen on 10/30/25.
//

import Foundation



struct Emoji: Codable, Identifiable {
    var id: UUID = UUID()
    var symbol: String
    var name: String
    var description: String
    var usage: String
}

let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
let archiveURL = documentsDirectory.appendingPathComponent("emojis_test").appendingPathExtension("plist")

func saveToFile(emojis: [Emoji]) {
    let propertyListEncoder = PropertyListEncoder()
    let encodedEmojis = try? propertyListEncoder.encode(emojis)
    
    try? encodedEmojis?.write(to: archiveURL, options: .noFileProtection)
}

func loadFromFile() -> [Emoji] {
    let propertyListDecoder = PropertyListDecoder()
    if let retrievedEmojisData = try? Data(contentsOf: archiveURL),
       let decodedEmojis = try?
        propertyListDecoder.decode(Array<Emoji>.self, from: retrievedEmojisData) {
        print(decodedEmojis)
    }
    return
}

func sampleEmojis() -> [Emoji] {
    return EmojiListView().emojis
}

func viewDidLoad() {
    if loadFromFile().contains(where: { Emoji in
        archiveURL
    }) {
        emojis.append
    } else {
        Emoji.sampleEmojis().append(emojis)
    }
}

