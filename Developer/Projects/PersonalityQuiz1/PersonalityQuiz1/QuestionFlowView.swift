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
                    SingleQuestionSubview()
                case .ranged:
                    RangedQuestionSubview()
                case .multiple:
                    MultipleQuestionSubview()
                }
            }
            .onAppear {
                quizManager.currentQuestionIndex = quizManager.questionList.firstIndex(of: question) ?? 0
            }
            .toolbar {
                ToolbarItem {
                    NavigationLink("Next") {
                        QuestionFlowView(question: quizManager.questionList[ quizManager.currentQuestionIndex + 1])
//                        Add a back button
                    }
                }
            }
    }
}

#Preview {
    
}
