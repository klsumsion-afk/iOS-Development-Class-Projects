//
//  ContentView.swift
//  PersonalityQuiz1
//
//  Created by Karigan Sumsion on 10/13/25.
//

import SwiftUI

struct TitleView: View {
    @State var quizManager = QuizManager()
    
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "moon.stars")
                NavigationLink("Begin") {
                    QuestionFlowView(question: quizManager.questionList.first!)
                }
                
            }
            .padding()
        }
        .environment(quizManager)
    }
}

#Preview {
    TitleView()
}
