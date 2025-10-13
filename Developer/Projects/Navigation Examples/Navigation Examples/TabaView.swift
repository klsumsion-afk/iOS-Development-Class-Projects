//
//  TabView.swift
//  Navigation Examples
//
//  Created by Karigan Sumsion on 10/9/25.
//

import SwiftUI

struct TabaView: View {
    @State private var isPresentingTab = false
    @State private var hasPresentedTab = false
    
    var body: some View {
        NavigationStack() {
            VStack {
                Image("TabPhoto")
                    .resizable()
                    .scaledToFill()
                
                    .navigationTitle("Tabitha")
                
                    .toolbar {
                        ToolbarItem(placement: .bottomBar) {
                            HStack {
                                Button("Tab") {
                                    isPresentingTab = true
                                }
                                if hasPresentedTab {
                                    Image(systemName: "checkmark.shield.fill")
                                }
                            }
                        }
                    }
                    .sheet(isPresented: $isPresentingTab, onDismiss: {
                        hasPresentedTab = true
                    }) {
                            NavigationStack {
                                Text("Role: Third Sister")
                                    .font(.custom("Typewriter", size: 35))
                                    .padding()
                                Text("Current Residence: Florida")
                                    .font(.custom("Typewriter", size: 35))
                                    .padding()
                                Text("Obsession: Photography, Law, Skin Care, Beauty, Hair, Beach, Swimming, Sun, Board Games, K-Pop Boy Bands")
                                    .font(.custom("Typewriter", size: 35))
                                    .padding()
                                Text("Detests: Video Games, Losing, Cold, Dry, Dark, Snow, Men, Headstrong People, Mornings")
                                    .font(.custom("Typewriter", size: 35))
                                    .padding()
                            }
                        }
                        .padding()
                    }
            }
        }
    }

#Preview {
    TabaView()
}

