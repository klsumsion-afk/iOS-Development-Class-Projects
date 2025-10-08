//
//  ContentView.swift
//  List of Somethings Lab
//
//  Created by Karigan Sumsion on 10/7/25.
//
import Foundation
import SwiftUI

struct ContentView: View {
    @State var dragons = [
        Dragon(species: "1st Species", characteristics: "-Characteristics", abilities: "-Abilities"),
        Dragon(species: "2nd Species", characteristics: "~Characteristics", abilities: "~Abilities"),
        Dragon(species: "3rd Species", characteristics: "*Characteristics", abilities: "*Abilities")
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(dragons) { dragon in
                        NavigationLink(destination: DetailView(dragon: dragon, onSave: saveDragon)) {
                            VStack {
                                Text(dragon.species)
                                Text(dragon.characteristics)
                                Text(dragon.abilities)
                            }
                        }
                    }
                    
                }
                header: {
                    Text("Dragons")
                        .font(.largeTitle)
                        .underline()
                }
                
                .padding()
            }
        }
    }
    
    private func saveDragon(_ dragon: Dragon) {
        guard let index = dragons.firstIndex(where: { $0.id == dragon.id }) else { return }
        
        dragons[index] = dragon
    }
}

struct DetailView: View {
    @Environment(\.dismiss) var dismiss
    
    var dragon: Dragon
    let onSave: (Dragon) -> Void
    @State private var speciesValue: String
    @State private var characteristicsValue: String
    @State private var abilitiesValue: String
    init(dragon: Dragon, onSave: @escaping (Dragon) -> Void) {
        self.dragon = dragon
        self.onSave = onSave
        
        self.speciesValue = dragon.species
        self.characteristicsValue = dragon.characteristics
        self.abilitiesValue = dragon.abilities
    }
    var body: some View {
        
        Form {
            TextField("Species", text: $speciesValue)
            TextField("Characteristics", text: $characteristicsValue)
            TextField("Abilities", text: $abilitiesValue)
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button("Save") {
                    onSave(Dragon(id: dragon.id, species: speciesValue, characteristics: characteristicsValue, abilities: abilitiesValue))
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

#Preview {
    DetailView(dragon: Dragon(species: "a", characteristics: "b", abilities: "c")) {_ in }
}
