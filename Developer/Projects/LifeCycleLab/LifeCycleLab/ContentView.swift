//
//  ContentView.swift
//  LifeCycleLab
//
//  Created by Karigan Sumsion on 10/21/25.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.scenePhase) var scenePhase
    
    var body: some View {
        NavigationStack {
            Text("Events")
                .font(.custom("Copperplate", size: 10))
                .bold()
                .onChange(of: scenePhase) {
                    newPhase in if newPhase == .inactive {
                        print("Freeze")
                    } else if newPhase == .active {
                        print("Ready, Set, Go!")
                    } else if newPhase == .background {
                        print("Frozen")
                    }
                }
                .padding()
            NavigationLink {
                SecondView()
            } label: {
                Text("The Tundra")
                    .font(.custom("American Typewriter", size: 110))
            }
            .onAppear {
                print("going back")
            }
            .onDisappear {
                print("moving forward")
            }
        }
    }
}
#Preview {
    ContentView()
}

