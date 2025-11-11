//
//  SingleQuestionSubview.swift
//  PersonalityQuiz1
//
//  Created by Karigan Sumsion on 10/14/25.
//

import SwiftUI
//Single

struct SingleQuestionSubview: View {
    @Environment(QuizManager.self) private var quizManager
    
    let question: Question
    
    @State private var pickerValue = "option"
    var body: some View {
        VStack {
            Text(question.text)
            Picker("option", selection: $pickerValue) {
                ForEach(question.answers) {
                    item in
                    
                    Text(item.text)
                        .tag(item.id)
                }
            }
        }
        .onAppear {
            print("SingleQuestionSubview with question: \(question.text)")
        }
        .onChange(of: pickerValue) { oldValue, newValue in
            print(newValue)
            guard let answerIndex = question.answers.firstIndex(where: { $0.id == newValue }) else { return }
            let answer = question.answers[answerIndex].type
            quizManager.selectAnswers([answer], forQuestionText: question.text)
        }
    }
}

