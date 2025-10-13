//
//  Kelli&Cameron.swift
//  Navigation Examples
//
//  Created by Karigan Sumsion on 10/9/25.
//

import SwiftUI

struct KelliCamView: View {
    @State private var isPresentingKelli = false
    @State private var isPresentingCameron = false
    @State private var hasPresentedKelli = false
    @State private var hasPresentedCameron = false
    
    var body: some View {
        NavigationStack() {
            VStack {
                Image("KelliCam")
                    .resizable()
                    .scaledToFill()
                
                    .navigationTitle("Cam & Kelli")
                    
                    .toolbar {
                        ToolbarItem(placement: .bottomBar) {
                            HStack {
                                Button("Cam") {
                                    isPresentingCameron = true
                                }
                                if hasPresentedCameron {
                                    Image(systemName: "checkmark.circle.dotted")
                                }
                                Spacer()
                                Button("Kelli") {
                                    isPresentingKelli = true
                                    }
                                if hasPresentedKelli {
                                    Image(systemName: "checkmark.circle.dotted")
                                }
                            }
                        }
                    }
                    .sheet(isPresented: $isPresentingCameron, onDismiss: {
                        hasPresentedCameron = true
                    }) {
                        NavigationStack {
                            Text("Role: Kelli's Husband")
                                .font(.custom("Typewriter", size: 35))
                                .padding()
                            Text("Current Residence: Utah")
                                .font(.custom("Typewriter", size: 35))
                                .padding()
                            Text("Obsession: Random Knowledge, Magic, Singing, Acting, Gaming, Hiding from People")
                                .font(.custom("Typewriter", size: 35))
                                .padding()
                        }
                    }
                    .padding()
                
                    .sheet(isPresented: $isPresentingKelli, onDismiss: {
                        hasPresentedKelli = true
                    }) {
                        NavigationStack {
                            Text("Role: Second Eldest Sister")
                                .font(.custom("Typewriter", size: 35))
                                .padding()
                            Text("Current Residence: Utah")
                                .font(.custom("Typewriter", size: 35))
                                .padding()
                            Text("Obsession: Dancing, Singing, Reading, Stories, Crafting, Baking, Charcuterie Setups, Budgets")
                                .font(.custom("Typewriter", size: 35))
                                .padding()
                        }
                    }
            }
        }
    }
}

#Preview {
    KelliCamView()
}
