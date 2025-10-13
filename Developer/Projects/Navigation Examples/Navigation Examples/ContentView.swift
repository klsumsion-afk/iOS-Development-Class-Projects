//
//  ContentView.swift
//  Navigation Examples
//
//  Created by Karigan Sumsion on 10/9/25.
//

import SwiftUI

struct ParentView: View {
    @State private var isPresentingKen = false
    @State private var isPresentingLisa = false
    @State private var hasPresentedKen = false
    @State private var hasPresentedLisa = false
    
    var body: some View {
        NavigationStack() {
            VStack {
                Image("ParentPhoto")
                    .resizable()
                    .scaledToFill()
                
                    .navigationTitle("Ken & Lisa")
                    
                    .toolbar {
                        ToolbarItem(placement: .bottomBar) {
                            HStack {
                                Button("Ken") {
                                    isPresentingKen = true
                                }
                                if hasPresentedKen {
                                    Image(systemName: "checkmark.diamond.fill")
                                }
                                Spacer()
                                Button("Lisa") {
                                    isPresentingLisa = true
                                    }
                                if hasPresentedLisa {
                                    Image(systemName: "checkmark.diamond.fill")
                                }
                            }
                        }
                    }
                    .sheet(isPresented: $isPresentingKen, onDismiss: {
                        hasPresentedKen = true
                    }) {
                        NavigationStack {
                            Text("Role: Father")
                                .font(.custom("Typewriter", size: 35))
                                .padding()
                            Text("Current Residence: Hawaii")
                                .font(.custom("Typewriter", size: 35))
                                .padding()
                            Text("Obsession: BYU Football & Working")
                                .font(.custom("Typewriter", size: 35))
                                .padding()
                            Text("Favorite Color: Blue")
                                .font(.custom("Typewriter", size: 35))
                                .padding()
                            Text("Favorite Animal: None, Hates ALL Animals")
                                .font(.custom("Typewriter", size: 35))
                                .padding()
                        }
                    }
                    .padding()
                
                    .sheet(isPresented: $isPresentingLisa, onDismiss: {
                        hasPresentedLisa = true
                    }) {
                        NavigationStack {
                            Text("Role: Mother")
                                .font(.custom("Typewriter", size: 35))
                                .padding()
                            Text("Current Residence: Hawaii")
                                .font(.custom("Typewriter", size: 35))
                                .padding()
                            Text("Obsession: Sewing, Puns, & Falling")
                                .font(.custom("Typewriter", size: 35))
                                .padding()
                            Text("Favorite Color: Pink")
                                .font(.custom("Typewriter", size: 35))
                                .padding()
                            Text("Favorite Animal: Dogs & Elephants")
                                .font(.custom("Typewriter", size: 35))
                                .padding()
                        }
                    }
            }
        }
    }
}

#Preview {
    ParentView()
}
#Preview {
    AmberView()
}
#Preview {
    KelliCamView()
}
#Preview {
    TabaView()
}
#Preview {
    BenNaViaView()
}
#Preview {
    EmmaView()
}
#Preview {
    MeView()
}
