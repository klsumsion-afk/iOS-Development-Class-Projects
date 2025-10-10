//
//  MeView.swift
//  Navigation Examples
//
//  Created by Karigan Sumsion on 10/9/25.
//

import SwiftUI

struct MeView: View {
    @State private var isPresentingMe = false
    
    var body: some View {
        NavigationStack() {
            VStack {
                Image("MePhoto")
                    .resizable()
                    .scaledToFill()
                
                    .navigationTitle("Karigan")
                
                    .toolbar {
                        ToolbarItem(placement: .bottomBar) {
                            Button("Me") {
                                isPresentingMe = true
                            }
                        }
                    }
                        .sheet(isPresented: $isPresentingMe) {
                            NavigationStack {
                                Text("Role: Youngest")
                                    .font(.custom("Typewriter", size: 35))
                                    .padding()
                                Text("Current Residence: Utah")
                                    .font(.custom("Typewriter", size: 35))
                                    .padding()
                                Text("Obsession: Gaming, Stories, YouTube, Random Facts, Animals, Dragons, Music, Learning, Spending Time with Family, Comfy Clothes, Collecting Art (I'll Never Mount")
                                    .font(.custom("Typewriter", size: 35))
                                    .padding()
                                Text("Favorite Color: Green")
                                    .font(.custom("Typewriter", size: 35))
                                    .padding()
                                Text("Favorite Animal: Pangolins")
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
    MeView()
}

