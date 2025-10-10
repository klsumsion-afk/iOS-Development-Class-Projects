//
//  BenNaViaView.swift
//  Navigation Examples
//
//  Created by Karigan Sumsion on 10/9/25.
//

import SwiftUI

struct BenNaViaView: View {
    @State private var isPresentingBen = false
    @State private var isPresentingNaVia = false
    
    var body: some View {
        NavigationStack() {
            VStack {
                Image("BenNaViaPhoto")
                    .resizable()
                    .scaledToFill()
                
                    .navigationTitle("Ben & NaVia")
                    
                    .toolbar {
                        ToolbarItem(placement: .bottomBar) {
                            HStack {
                                Button("Ben") {
                                    isPresentingBen = true
                                }
                                Spacer()
                                Button("NaVia") {
                                    isPresentingNaVia = true
                                    }
                            }
                        }
                    }
                    .sheet(isPresented: $isPresentingBen) {
                        NavigationStack {
                            Text("Role: Only Brother")
                                .font(.custom("Typewriter", size: 35))
                                .padding()
                            Text("Current Residence: North Carolina")
                                .font(.custom("Typewriter", size: 35))
                                .padding()
                            Text("Obsession: Philosophy, Movies, People, Board Games, Spending Time with Family, Business, Anime, Conversations, Teasing")
                                .font(.custom("Typewriter", size: 35))
                                .padding()
                        }
                    }
                    .padding()
                
                    .sheet(isPresented: $isPresentingNaVia) {
                        NavigationStack {
                            Text("Role: Ben's Wife")
                                .font(.custom("Typewriter", size: 35))
                                .padding()
                            Text("Current Residence: North Carolina")
                                .font(.custom("Typewriter", size: 35))
                                .padding()
                            Text("Obsession: Winning, Flying, Hanging Out, Shopping, Skin Care, Clothing, Eating, Partys, Mini Brands")
                                .font(.custom("Typewriter", size: 35))
                                .padding()
                        }
                    }
            }
        }
    }
}

#Preview {
    BenNaViaView()
}
