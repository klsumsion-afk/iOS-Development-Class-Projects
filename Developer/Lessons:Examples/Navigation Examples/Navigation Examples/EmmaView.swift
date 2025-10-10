//
//  EmmaView.swift
//  Navigation Examples
//
//  Created by Karigan Sumsion on 10/9/25.
//

import SwiftUI

struct EmmaView: View {
    @State private var isPresentingEmma = false
    
    var body: some View {
        NavigationStack() {
            VStack {
                Image("EmmaPhoto")
                    .resizable()
                    .scaledToFill()
                
                    .navigationTitle("Emma")
                
                    .toolbar {
                        ToolbarItem(placement: .bottomBar) {
                            Button("Emma") {
                                isPresentingEmma = true
                            }
                        }
                    }
                        .sheet(isPresented: $isPresentingEmma) {
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
                                Text("Favorite Animal: Dragons")
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

