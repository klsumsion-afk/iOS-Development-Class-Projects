//
//  QuizManager.swift
//  PersonalityQuiz1
//
//  Created by Karigan Sumsion on 10/14/25.
//

import SwiftUI

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}
enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: SpiritType
}
enum SpiritType {
    case kitsune, unicorn, sylph, banshee, dragon
}

class QuizManager {
    let currentQuestioni: Int = 0
    let questionList: [Question] = [
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
                Answer(text: "1", type: .kitsune),
                Answer(text: "2", type: .unicorn),
                Answer(text: "3", type: .sylph),
                Answer(text: "4", type: .dragon),
                Answer(text: "5", type: .banshee)
            ]
        )
    ]
    var selectedAnswers: [SpiritType] = [ ]
}
