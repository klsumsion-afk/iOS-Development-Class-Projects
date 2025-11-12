//
//  SingleQuestionSubview.swift
//  PersonalityQuiz1
//
//  Created by Karigan Sumsion on 10/14/25.
//

import SwiftUI
//Single

struct SingleQuestionSubview: View {
    @Environment(QuizManager.self) var quizManager
    @State var singleViewModel : SingleQuestionSubviewViewModel
    
    init(question: Question) {
        singleViewModel = SingleQuestionSubviewViewModel(question: question)
    }
    
        var body: some View {
        VStack {
            Text(singleViewModel.question.text)
            Picker("option", selection: $singleViewModel.pickerValue) {
                ForEach(singleViewModel.question.answers) {
                    item in
                    
                    Text(item.text)
                        .tag(item.id)
                }
            }
        }
        .onAppear {
            print("SingleQuestionSubview with question: \(singleViewModel.question.text)")
        }
        .onChange(of: singleViewModel.pickerValue) { oldValue, newValue in
            print(newValue)
            singleViewModel.pickerValueSaved(oldValue: oldValue, newValue: newValue, quizManager: quizManager)
        }
    }
}

