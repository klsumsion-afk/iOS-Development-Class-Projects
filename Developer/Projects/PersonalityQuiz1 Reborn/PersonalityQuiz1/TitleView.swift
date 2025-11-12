//
//  ContentView.swift
//  PersonalityQuiz1
//
//  Created by Karigan Sumsion on 10/13/25.
//

import SwiftUI
//Add more once quiz functions correctly. 

struct TitleView: View {
    var viewModel = TitleViewViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "moon.stars")
                    .font(.largeTitle)
                NavigationLink("Begin") {
                    QuestionFlowView(question: viewModel.quizManager.questionList.first!)
                }
                
            }
            .padding()
        }
        .environment(viewModel.quizManager)
    }
}

#Preview {
    TitleView()
}
