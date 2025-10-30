//
//  QuizManager.swift
//  PersonalityQuiz1
//
//  Created by Karigan Sumsion on 10/14/25.
//

import SwiftUI

struct Question: Equatable {
    static func == (lhs: Question, rhs: Question) -> Bool {
        lhs.text == rhs.text
    }
    
    var text: String
    var type: ResponseType
    var answers: [Answer]
}
enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Answer: Identifiable {
    var id: String { text }
    
    var text: String
    var type: SpiritType
}
enum SpiritType {
    case kitsune, unicorn, sylph, banshee, dragon
}

@Observable class QuizManager {
    var currentQuestionIndex: Int = 0 {
        willSet {
            print("Previous\(currentQuestionIndex) to\(newValue)")
        }
    }
    var currentQuestion: Question {
        return questionList[currentQuestionIndex]
    }
    var selectedAnswers: [Answer] = [ ]
    let questionList: [Question] = [
//        Need each question to refer to the correct text and Answer texts.
        Question(
            text: "What is your season?",
            type: .single,
            answers: [
                Answer(text: "Spring", type: .sylph),
                Answer(text: "Summer", type: .dragon),
                Answer(text: "Fall", type: .kitsune),
                Answer(text: "Winter", type: .banshee),
                Answer(text: "All of Them", type: .unicorn)
            ]
        ),
        Question(
            text: "What is your favorite time of day?",
            type: .multiple, 
            answers: [
                Answer(text: "Morning", type: .banshee),
                Answer(text: "Noon", type: .sylph),
                Answer(text: "AfterNoon", type: .dragon),
                Answer(text: "Evening", type: .kitsune),
                Answer(text: "Midnight", type: .unicorn)
            ]
        ),
        Question(
            text: "Where do Cats rank?",
            type: .ranged,
            answers: [
                Answer(text: "Ranking: \(Int(1.0))", type: .kitsune),
                Answer(text: "Ranking: \(Int(2.0))", type: .unicorn),
                Answer(text: "Ranking: \(Int(3.0))", type: .sylph),
                Answer(text: "Ranking: \(Int(4.0))", type: .dragon),
                Answer(text: "Ranking: \(Int(5.0))", type: .banshee)
            ]
        )
    ]
    
    func nextQuestion(after question: Question) -> Question? {
            let index = questionList.firstIndex(of: question)
            
            if let index, index < questionList.count - 1 {
                return questionList[index + 1]
            } else {
                return nil
            }
        }
    
    func selectAnswer(_ answer: Answer) {
        selectedAnswers.append(answer)
// Need to calculate answers for resultsView
    }
}
