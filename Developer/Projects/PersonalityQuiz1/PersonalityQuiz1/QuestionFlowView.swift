//
//  QuestionFlowView.swift
//  PersonalityQuiz1
//
//  Created by Karigan Sumsion on 10/14/25.
//

import SwiftUI

struct QuestionFlowView: View {
    @Environment(QuizManager.self) private var quizManager
    let question: Question
    var body: some View {
        VStack {
            switch question.type {
            case .single:
                SingleQuestionSubview(question: question)
            case .ranged:
                RangedQuestionSubview(question: question)
            case .multiple:
                MultipleQuestionSubview(question: question)
            }
        }
        
        .toolbar {
            ToolbarItem {
                
                NavigationLink("Next") {
                    if let nextQuestion = quizManager.nextQuestion(after: question) {
                        QuestionFlowView(question: nextQuestion)
                    } else {
                        ResultsView()
                    }
                }
            }
        }
    }
}

#Preview {
    
}
