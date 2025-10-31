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
