//
//  Dragon.swift
//  List of Somethings Lab
//
//  Created by Karigan Sumsion on 10/7/25.
//
import Foundation

struct Dragon: Identifiable {
    let id: UUID
    var species: String
    var characteristics: String
    var abilities: String
    
    init(id: UUID, species: String, characteristics: String, abilities: String) {
        self.id = id
        self.species = species
        self.characteristics = characteristics
        self.abilities = abilities
    }
    
    init(species: String, characteristics: String, abilities: String) {
        self.id = UUID()
        self.species = species
        self.characteristics = characteristics
        self.abilities = abilities
    }
}
