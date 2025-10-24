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
            Text(quizManager.currentQuestion.text)
                .padding()
            Toggle(quizManager.currentQuestion, isOn: $isOn)
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
    }
}


