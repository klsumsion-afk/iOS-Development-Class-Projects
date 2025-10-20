//
//  SingleQuestionSubview.swift
//  PersonalityQuiz1
//
//  Created by Karigan Sumsion on 10/14/25.
//

import SwiftUI
//Picker

struct SingleQuestionSubview: View {
    @Environment(QuizManager.self) private var quizManager
    @State private var pickerValue = "option"
    var body: some View {

            Text("What is your season?")
            Picker("Choose your season", selection: $pickerValue) {
                ForEach(["Spring", "Summer", "Fall", "Winter", "All of Them"], id: \.self) {
                    item in
                    
                    Text(item)
                        .tag(item)
                }
            }
//            .toolbar {
//                ToolbarItem(placement: .bottomBar) {
//                    HStack {
//                        NavigationLink("Next") {
//                            QuestionFlowView()
//                        }
//                    }
//                }
//            }
        
    }
}

