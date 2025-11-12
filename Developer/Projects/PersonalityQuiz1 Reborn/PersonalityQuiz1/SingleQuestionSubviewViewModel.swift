//
//  SingleQuestionSubviewViewModel.swift
//  PersonalityQuiz1
//
//  Created by Karigan Sumsion on 11/12/25.
//

import SwiftUI

@Observable
class SingleQuestionSubviewViewModel {
    
    init(pickerValue: String = "option", question: Question) {
        self.pickerValue = pickerValue
        self.question = question
    }
    
    var pickerValue = "option"
    
    let question: Question
    
    func pickerValueSaved(oldValue: String, newValue: String, quizManager: QuizManager) {
        guard let answerIndex = question.answers.firstIndex(where: { $0.id == newValue }) else { return }
        let answer = question.answers[answerIndex].type
        quizManager.selectAnswers([answer], forQuestionText: question.text)
    }

}


