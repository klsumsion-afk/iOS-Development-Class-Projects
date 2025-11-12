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
                .font(.largeTitle)
            
                .onAppear {
                    print(quizManager.selectedAnswers)
                    _ = quizManager.calculateResult()
                }
                .padding()
            Text("Your Spirit is a \(quizManager.calculateResult().rawValue)")
            
                .padding()
            switch quizManager.calculateResult() {
            case .banshee:
                Image("banshee")
            case .dragon:
                Image("dragon")
            case .kitsune:
                Image("kitsune")
            case .sylph:
                Image("sylph")
            case .unicorn:
                Image("unicorn")
            }
        }
    }
}

#Preview {
    ResultsView()
}
