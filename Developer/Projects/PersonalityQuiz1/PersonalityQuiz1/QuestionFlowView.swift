//
//  QuestionFlowView.swift
//  PersonalityQuiz1
//
//  Created by Karigan Sumsion on 10/14/25.
//

import SwiftUI

struct QuestionFlowView: View {
    @State private var quizManager = QuizManager()
    
    var body: some View {
        NavigationStack {
//            Do custom navigation like previous assigment
                SingleQuestionSubview()
            RangedQuestionSubview()
            MultipleQuestionSubview()
        }
        .environment(quizManager)
    }
}

#Preview {
    QuestionFlowView()
}
