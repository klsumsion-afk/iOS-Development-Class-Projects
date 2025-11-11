//
//  ResultsView.swift
//  PersonalityQuiz1
//
//  Created by Karigan Sumsion on 10/14/25.
//

import SwiftUI

struct ResultsView: View {
    @Environment(QuizManager.self) private var quizManager
    var body: some View {
        VStack {
            Image(systemName: "rainbow")
        }
        .onAppear {
            print(quizManager.selectedAnswers)
            let result = quizManager.calculateResult()
        }
    }
}

#Preview {
    ResultsView()
}
