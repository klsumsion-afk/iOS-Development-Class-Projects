//
//  RangedQuestionSubview.swift
//  PersonalityQuiz1
//
//  Created by Karigan Sumsion on 10/14/25.
//

import SwiftUI
//Slider
struct RangedQuestionSubview: View {
    @State private var sliderValue = 0.0
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Where do cats rank?")
                Text("1 being 'the worst' & 5 being 'the best'")
                Slider(value: $sliderValue)
                Text("1  ~  2  ~  3  ~  4  ~  5")
                    .font(.custom("Impact", size: 50))
                    .foregroundStyle(Color.teal)
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
    RangedQuestionSubview()
}
