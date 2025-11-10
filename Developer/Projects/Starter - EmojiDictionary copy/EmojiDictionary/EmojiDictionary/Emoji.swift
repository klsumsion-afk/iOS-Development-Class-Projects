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
    
    static var documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    static var archiveURL = documentsDirectory.appendingPathComponent("emojis_test").appendingPathExtension("plist")
    
    
    static func saveToFile(emojis: [Emoji]) {
        let propertyListEncoder = PropertyListEncoder()
        let encodedEmojis = try? propertyListEncoder.encode(emojis)
        
        try? encodedEmojis?.write(to: archiveURL, options: .noFileProtection)
    }
    
    static func loadFromFile() -> [Emoji] {
        let propertyListDecoder = PropertyListDecoder()
        if let retrievedEmojisData = try? Data(contentsOf: archiveURL),
           let decodedEmojis = try?
            propertyListDecoder.decode(Array<Emoji>.self, from: retrievedEmojisData) {
            print(decodedEmojis)
            return decodedEmojis
        }
        
        return sampleEmojis()
    }
    
    static func sampleEmojis() -> [Emoji] {
        return [Emoji(symbol: "😀", name: "Grinning Face", description: "A typical smiley face.", usage: "happiness")]
    }
    
}
