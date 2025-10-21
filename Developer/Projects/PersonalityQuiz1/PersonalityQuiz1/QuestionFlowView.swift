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
//                        if statement consists of incorrect syntax. Tried different minor adjustments, still crashed. I am missing something obvious, probably.
                        if quizManager.currentQuestionIndex == quizManager.questionList.lastIndex(of: question) ?? 0 {
//                            Does 'Finish' need its own navigation link? Still crashed with and without.
                            NavigationLink("Finish") {
                                ResultsView()
                            }
                        }
//                        Do I need the else statement?
//                        Crashed sooner with the else then without.
                    }
                    
//                    Figure out 'Next' first before attempting 'Previous'.
                    
///                    NavigationLink("Previous") {
///                        QuestionFlowView(question: quizManager.questionList[quizManager.currentQuestionIndex - 1])
///                        if quizManager.currentQuestionIndex == quizManager.questionList.firstIndex(of: question) {
///                            TitleView()
///                        }
///                    }
                    
                }
            }
    }
}

#Preview {
    
}
