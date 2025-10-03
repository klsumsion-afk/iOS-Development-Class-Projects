//
//  SpaceshipScreen.swift
//  State Spaceship (aka Stateship)
//
//  Created by Jane Madsen on 9/29/25.
//

import SwiftUI


@Observable class ShipComputer {
    var availablePower = 10
    var heading = ""
}

struct SpaceshipScreen: View {
    @State var computer = ShipComputer()
    var body: some View {
        Form {
            Section("Helm Station") {
                HelmStation()
            }
            
            Section("Weapons Station") {
                WeaponsStation()
            }
            
            Section("Shield Station") {
                ShieldStation()
            }
            
            Section("Engine Station") {
                EngineStation()
            }
            
            Text("Available Power: \(computer.availablePower)")
            
        }
        .environment(computer)
        .padding()
    }
}

struct HelmStation: View {
    @Environment(ShipComputer.self) private var computer
    var body: some View {
        @Bindable var computer = ShipComputer()
        HStack {
            CrewChair(crewMember: .dog)
            
            TextField("Heading", text: $computer.heading)
        }
    }
}

struct WeaponsStation: View {
    @Environment(ShipComputer.self) private var computer
    @State private var isOn = false
    var body: some View {
        HStack {
            CrewChair(crewMember: .cat)
            
            VStack {
                Toggle("Weapons Power: \(computer.availablePower)", isOn: $isOn)
                    .onChange(of: isOn) {_,_ in
                        if isOn {
                            computer.availablePower += 3
                        } else {
                            computer.availablePower -= 3
                        }
                        
                        if computer.availablePower > 10 {
                            isOn = false
                        }
                    }
                
                Button("Fire!") {
                    if computer.availablePower >= 3 {
                        print("PEW!")
                    } else if computer.availablePower <= 2 {
                        print("NOT Enough Power!")
                    }
                }
                .disabled(true)
            }
        }
    }
}

struct ShieldStation: View {
    @Environment(ShipComputer.self) private var computer
    @State private var powerUsed = 0
    var body: some View {
        HStack {
            CrewChair(crewMember: .lizard)
            
            Stepper("Shield Power: \(powerUsed)", value: $powerUsed, in: 0...10)
                .onChange(of: powerUsed) { oldValue, newValue in
                    let difference = newValue - oldValue
                    
                    computer.availablePower -= difference
                    
                    if computer.availablePower < 0 {
                        powerUsed = oldValue
                    }
                }
        }
    }
}

struct EngineStation: View {
    @Environment(ShipComputer.self) private var computer
    @State private var powUsed = 0
    var body: some View {
        HStack {
            CrewChair(crewMember: .hare)
            Stepper("Engine Power: \(powUsed)", value: $powUsed, in: 0...10)
                .onChange(of: powUsed) { oldValue, newValue in
                    let difference = newValue - oldValue
                    
                    computer.availablePower -= difference
                    
                    if computer.availablePower < 0 {
                        powUsed = oldValue
                    }
                }
            
        }
    }
}

struct CrewChair: View {
    var crewMember: Crew
    @State var inChair: Bool = false
    
    var body: some View {
        Button {
            inChair.toggle()
        } label: {
            if inChair {
                crewMember.icon
            } else {
                Image(systemName: "person.slash")
            }
        }
        .padding(5)
        .background {
            Circle()
                .foregroundStyle(.gray)
        }
    }
}

enum Crew: String {
    case dog
    case cat
    case lizard
    case hare
    
    var icon: Image {
        switch self {
        case .dog:
            Image(systemName: "dog")
        case .cat:
            Image(systemName: "cat")
        case .lizard:
            Image(systemName: "lizard")
        case .hare:
            Image(systemName: "hare")
        }
    }
}

#Preview {
    SpaceshipScreen()
}
