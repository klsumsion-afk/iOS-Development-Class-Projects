//
//  EmmaView.swift
//  Navigation Examples
//
//  Created by Karigan Sumsion on 10/9/25.
//

import SwiftUI

struct EmmaView: View {
    @State private var isPresentingEmma = false
    @State private var hasPresentedEmma = false
    
    var body: some View {
        NavigationStack() {
            VStack {
                Image("EmmaPhoto")
                    .resizable()
                    .scaledToFill()
                
                    .navigationTitle("Emma")
                
                    .toolbar {
                        ToolbarItem(placement: .bottomBar) {
                            HStack {
                                Button("Emma") {
                                    isPresentingEmma = true
                                }
                                if hasPresentedEmma {
                                    Image(systemName: "checkmark")
                                }
                            }
                        }
                    }
                    .sheet(isPresented: $isPresentingEmma, onDismiss: {
                        hasPresentedEmma = true
                    }) {
                            NavigationStack {
                                Text("Role: Fourth Sister")
                                    .font(.custom("Typewriter", size: 35))
                                    .padding()
                                Text("Current Residence: Utah, we share a house")
                                    .font(.custom("Typewriter", size: 35))
                                    .padding()
                                Text("Obsession: Gaming, Stories, Writing, Design, TV, Korea, Culture, Seventeen, Jumpsuits, Art, Doordash")
                                    .font(.custom("Typewriter", size: 35))
                                    .padding()
                                Text("Favorite Color: Royal Blue")
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
    EmmaView()
}

