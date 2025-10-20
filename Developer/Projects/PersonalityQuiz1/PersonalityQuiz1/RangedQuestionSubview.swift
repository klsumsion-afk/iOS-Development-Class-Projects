//
//  RangedQuestionSubview.swift
//  PersonalityQuiz1
//
//  Created by Karigan Sumsion on 10/14/25.
//

import SwiftUI
//Slider
struct RangedQuestionSubview: View {
    @Environment(QuizManager.self) private var quizManager
    @State private var sliderValue = 1.0
    let minValue = 1.0
    let maxValue = 5.0
    let stepValue = 1.0
    
    var body: some View {
    
            VStack {
                Text("Where do cats rank?")
                Slider(value: $sliderValue, in: minValue...maxValue, step: stepValue) {
                } minimumValueLabel: {
                    Text("Worst: \(Int(minValue))")
                } maximumValueLabel: {
                    Text("Best: \(Int(maxValue))")
                }
                .padding(.horizontal)
                
                Stepper(value: $sliderValue, in: minValue...maxValue, step: stepValue) {
                    Text("Ranking: \(Int(sliderValue))")
                }
            }
            //                Text("1  ~  2  ~  3  ~  4  ~  5")
            //                    .font(.custom("Impact", size: 50))
            //                    .foregroundStyle(Color.teal)
        
//        .toolbar {
//            ToolbarItem(placement: .bottomBar) {
//                HStack {
//                    NavigationLink("Next") {
//                        QuestionFlowView()
//                    }
//                }
//            }
//        }
    }
}




