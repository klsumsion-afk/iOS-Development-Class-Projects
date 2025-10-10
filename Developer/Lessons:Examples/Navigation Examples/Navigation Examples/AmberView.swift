//
//  AmberView.swift
//  Navigation Examples
//
//  Created by Karigan Sumsion on 10/9/25.
//

import SwiftUI

struct AmberView: View {
    @State private var isPresentingAmber = false
    
    var body: some View {
        NavigationStack() {
            VStack {
                Image("AmberPhoto")
                    .resizable()
                    .scaledToFill()
                
                    .navigationTitle("Amber")
                
                    .toolbar {
                        ToolbarItem(placement: .bottomBar) {
                            Button("Amber") {
                                isPresentingAmber = true
                            }
                        }
                    }
                        .sheet(isPresented: $isPresentingAmber) {
                            NavigationStack {
                                Text("Role: Eldest Sister")
                                    .font(.custom("Typewriter", size: 35))
                                    .padding()
                                Text("Current Residence: Florida")
                                    .font(.custom("Typewriter", size: 35))
                                    .padding()
                                Text("Obsession: Gaming, Star Wars, Star Trek, Sports, Geneology, Being Healthy")
                                    .font(.custom("Typewriter", size: 35))
                                    .padding()
                                Text("Favorite Color: Blue")
                                    .font(.custom("Typewriter", size: 35))
                                    .padding()
                                Text("Chinese Zodiac: Dragon")
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
    AmberView()
}

