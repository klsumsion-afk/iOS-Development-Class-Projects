//
//  MultipleQuestionSubview.swift
//  PersonalityQuiz1
//
//  Created by Karigan Sumsion on 10/14/25.
//

import SwiftUI
//Toggles
struct MultipleQuestionSubview: View {
    @Environment(QuizManager.self) private var quizManager
    @State private var isOn = false
    @State private var isOn1 = false
    @State private var isOn2 = false
    @State private var isOn3 = false
    @State private var isOn4 = false
    
    var body: some View {
        
        VStack {
            Text(quizManager.currentQuestion.text.multiple)
                .padding()
            Toggle(" ", isOn: $isOn)
                .padding()
            Toggle(" ", isOn: $isOn1)
                .padding()
            Toggle(" ", isOn: $isOn2)
                .padding()
            Toggle(" ", isOn: $isOn3)
                .padding()
            Toggle(" ", isOn: $isOn4)
                .padding()
            
                .onChange(of: isOn) {
                    let _ = quizManager.currentQuestion.answers
                }
                .onChange(of: isOn1) {
                   let _ = quizManager.currentQuestion.answers
                }
                .onChange(of: isOn2) {
                    let _ = quizManager.currentQuestion.answers
                }
                .onChange(of: isOn3) {
                    let _ = quizManager.currentQuestion.answers
                }
                .onChange(of: isOn4) {
                    let _ = quizManager.currentQuestion.answers
                }
        }
    }
}


