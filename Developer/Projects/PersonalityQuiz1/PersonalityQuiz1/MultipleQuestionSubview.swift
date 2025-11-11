//
//  MultipleQuestionSubview.swift
//  PersonalityQuiz1
//
//  Created by Karigan Sumsion on 10/14/25.
//

import SwiftUI
//Toggles
struct MultipleQuestionSubview: View {
    @Environment(QuizManager.self) private var quizManager
    
    let question: Question
    
    @State private var isOn = false
    @State private var isOn1 = false
    @State private var isOn2 = false
    @State private var isOn3 = false
    @State private var isOn4 = false
    
    var body: some View {
        
        VStack {
            Text(question.text)
                .padding()
            
            Toggle(question.answers[0].text, isOn: $isOn)
                .padding()
            Toggle(question.answers[1].text, isOn: $isOn1)
                .padding()
            Toggle(question.answers[2].text, isOn: $isOn2)
                .padding()
            Toggle(question.answers[3].text, isOn: $isOn3)
                .padding()
            Toggle(question.answers[4].text, isOn: $isOn4)
                .padding()
        }
        .onChange(of: isOn) {
            sendAnswers()
        }
        .onChange(of: isOn1) {
            sendAnswers()
        }
        .onChange(of: isOn2) {
            sendAnswers()
        }
        .onChange(of: isOn3) {
            sendAnswers()
        }
        .onChange(of: isOn4) {
            sendAnswers()
        }
        .onAppear {
            print("MultipleQuestionSubview with question: \(question.text)")
        }
    }
    
    func sendAnswers() {
        var result: [SpiritType] = []
        if isOn {
            result.append(question.answers[0].type)
        }
        if isOn1 {
            result.append(question.answers[1].type)
        }
        
        if isOn2 {
            result.append(question.answers[2].type)
        }
        
        if isOn3 {
            result.append(question.answers[3].type)
        }
        
        if isOn4 {
            result.append(question.answers[4].type)
        }
        
        quizManager.selectAnswers(result, forQuestionText: question.text)
    }
}


