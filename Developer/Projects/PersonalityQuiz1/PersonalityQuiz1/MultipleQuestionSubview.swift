//
//  MultipleQuestionSubview.swift
//  PersonalityQuiz1
//
//  Created by Karigan Sumsion on 10/14/25.
//

import SwiftUI
//Toggles
struct MultipleQuestionSubview: View {
    @State private var isOn = false
    @State private var isOn1 = false
    @State private var isOn2 = false
    @State private var isOn3 = false
    @State private var isOn4 = false
    
    var body: some View {
        NavigationStack {
            
            VStack {
                Text("What is your favorite time of day?")
                    .padding()
                Toggle("Morning", isOn: $isOn)
                    .padding()
                Toggle("Noon", isOn: $isOn1)
                    .padding()
                Toggle("AfterNoon", isOn: $isOn2)
                    .padding()
                Toggle("Evening", isOn: $isOn3)
                    .padding()
                Toggle("Midnight", isOn: $isOn4)
                    .padding()
            }
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    HStack {
                        Button("Next", action: { })
                        //                        Will have navigation link
                    }
                }
            }
        }
    }
}

#Preview {
    MultipleQuestionSubview()
}
