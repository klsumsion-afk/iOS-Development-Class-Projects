//
//  SingleQuestionSubview.swift
//  PersonalityQuiz1
//
//  Created by Karigan Sumsion on 10/14/25.
//

import SwiftUI
//Picker

struct SingleQuestionSubview: View {
    @Environment(QuizManager.self) private var quizManager
    @State private var pickerValue = "option"
    var body: some View {

        Text(quizManager.currentQuestion.text)
        Picker("option", selection: $pickerValue) {
                ForEach(id: \.self) {
                    item in
                    
                    Text(item)
                        .tag(item)
                }
            }

        
    }
}

