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
    
    let question: Question
    
    @State private var sliderValue = 1.0
    let minValue = 1.0
    let maxValue = 5.0
    let stepValue = 1.0
    
    var body: some View {
    
            VStack {
                Text(question.text)
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
            .onChange(of: sliderValue) { _, newValue in
                let answer = question.answers[Int(newValue) - 1].type
                quizManager.selectAnswers([answer], forQuestionText: question.text)
            }
            .onAppear {
                print("RangedQuestionSubview with question: \(question.text)")
            }
    }
}




