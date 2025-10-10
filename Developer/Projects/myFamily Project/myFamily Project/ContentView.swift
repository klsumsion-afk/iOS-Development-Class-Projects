//
//  ContentView.swift
//  myFamily Project
//
//  Created by Karigan Sumsion on 10/9/25.
//

import SwiftUI

struct ContentView: View {
    @State private var path: [String] = []

    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Spacer()
                
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                
                Spacer()
                
                NavigationLink("Go to Detail", value: "detail")
                
                Spacer()
            }
            .navigationTitle("Home")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Next") {
                        path.append("detail")
                    }
                }
            }
            .navigationDestination(for: String.self) { route in
                if route == "detail" {
                    DetailView()
                } else {
                    Text("Unknown route")
                }
            }
        }
    }
}

struct DetailView: View {
    var body: some View {
        VStack(spacing: 12) {
            Text("Detail View")
                .font(.title)
            Text("You navigated here.")
        }
        .navigationTitle("Detail")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Action") {
                    /* do something */
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
