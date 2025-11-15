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
enum SpiritType: String, CaseIterable {
    case kitsune = "Kitsune", unicorn = "Unicorn", sylph = "Sylph", banshee = "Banshee", dragon = "Dragon"
}

@Observable class QuizManager {
    var selectedAnswers: [String: [SpiritType]] = [:]
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
                Answer(text: "Ranking: \(Int(2.0))", type: .dragon),
                Answer(text: "Ranking: \(Int(3.0))", type: .sylph),
                Answer(text: "Ranking: \(Int(4.0))", type: .unicorn),
                Answer(text: "Ranking: \(Int(5.0))", type: .banshee)
            ]
        ),
        Question(text: "Would you rather?",
                 type: .single,
                 answers: [
                    Answer(text: "Swim with Sharks", type: .sylph),
                    Answer(text: "Dance with Demons", type: .banshee),
                    Answer(text: "Sleep with Snakes", type: .dragon),
                    Answer(text: "Run from Killer-Robots", type: .unicorn),
                    Answer(text: "Eat with Goblins", type: .kitsune)
                 ]
                ),
        Question(text: "How much do you like salty foods?",
                 type: .ranged,
                 answers: [
                    Answer(text: "\(Int(1.0))", type: .sylph),
                    Answer(text: "\(Int(2.0))", type: .banshee),
                    Answer(text: "\(Int(3.0))", type: .unicorn),
                    Answer(text: "\(Int(4.0))", type: .kitsune),
                    Answer(text: "\(Int(5.0))", type: .dragon),
                 ]
                ),
        Question(text: "What sports do you watch?",
                 type: .multiple,
                 answers: [
                    Answer(text: "Football", type: .dragon),
                    Answer(text: "Lacrosse", type: .sylph),
                    Answer(text: "Tennis", type: .unicorn),
                    Answer(text: "Soccer", type: .kitsune),
                    Answer(text: "Hockey", type: .banshee)
                 ]
                ),
        Question(text: "What exotic pet would you keep?",
                 type: .single,
                 answers: [
                    Answer(text: "Rabbit", type: .dragon),
                    Answer(text: "Snake", type: .banshee),
                    Answer(text: "Bird", type: .sylph),
                    Answer(text: "Lizard", type: .unicorn),
                    Answer(text: "Ferret", type: .kitsune),
                 ]
                ),
        //        Question(text: "How likely are you to date the Beast from Beauty and the Beast?",
        //                 type: .ranged,
        //                 answers: [
        //                    Answer(text: "\(Int(1.0))", type: .),
        //                    Answer(text: "\(Int(2.0))", type: .),
        //                    Answer(text: "\(Int(3.0))", type: .),
        //                    Answer(text: "\(Int(4.0))", type: .),
        //                    Answer(text: "\(Int(5.0))", type: .)
        //                 ]
        //                ),
        Question(text: "Who is better?",
                 type: .single,
                 answers: [
                    Answer(text: "Zeus", type: .dragon),
                    Answer(text: "Hera", type: .unicorn),
                    Answer(text: "Hades", type: .banshee),
                    Answer(text: "Persephone", type: .kitsune),
                    Answer(text: "Poseidon", type: .sylph),
                 ]
                ),
        Question(text: "What book series have you read?",
                 type: .multiple,
                 answers: [
                    Answer(text: "Harry Potter", type: .unicorn),
                    Answer(text: "Wings of Fire", type: .dragon),
                    Answer(text: "Red Rising", type: .kitsune),
                    Answer(text: "Percy Jackson", type: .banshee),
                    Answer(text: "Stormlight Archive (Way of Kings series)", type: .sylph)
                 ]
                ),
        Question(text: "What is your favorite week day?",
                 type: .single,
                 answers: [
                    Answer(text: "Monday", type: .banshee),
                    Answer(text: "Tuesday", type: .dragon),
                    Answer(text: "Wednesday", type: .unicorn),
                    Answer(text: "Thursday", type: .kitsune),
                    Answer(text: "Friday", type: .sylph)
                 ]
                ),
        Question(text: "Where do dinosaurs rank on coolness?",
                 type: .ranged,
                 answers: [
                    Answer(text: "\(Int(1.0))", type: .sylph),
                    Answer(text: "\(Int(2.0))", type: .banshee),
                    Answer(text: "\(Int(3.0))", type: .unicorn),
                    Answer(text: "\(Int(4.0))", type: .kitsune),
                    Answer(text: "\(Int(5.0))", type: .dragon)
                 ]
                ),
        Question(text: "How would you rather die?",
                 type: .single,
                 answers: [
                    Answer(text: "Die by firing squad", type: .dragon),
                    Answer(text: "Die by drowning", type: .sylph),
                    Answer(text: "Die by falling", type: .unicorn),
                    Answer(text: "Die by acid", type: .banshee),
                    Answer(text: "Die by stabbing", type: .kitsune),
                 ]
                ),
        Question(text: "How much do you like Taylor Swift?",
                 type: .ranged,
                 answers: [
                    Answer(text: "\(Int(1.0))", type: .kitsune),
                    Answer(text: "\(Int(2.0))", type: .dragon),
                    Answer(text: "\(Int(3.0))", type: .unicorn),
                    Answer(text: "\(Int(4.0))", type: .banshee),
                    Answer(text: "\(Int(5.0))", type: .sylph)
                 ]
                ),
        Question(text: "What is your favorite drink?",
                 type: .single,
                 answers: [
                    Answer(text: "Latte", type: .sylph),
                    Answer(text: "White Monster", type: .dragon),
                    Answer(text: "Protein Smoothie", type: .unicorn),
                    Answer(text: "Bottled Water", type: .banshee),
                    Answer(text: "Chai Tea", type: .kitsune)
                 ]
                ),
        Question(text: "What were your childhood dream jobs?",
                 type: .multiple,
                 answers: [
                    Answer(text: "Farmer/Rancher", type: .kitsune),
                    Answer(text: "First Responder", type: .banshee),
                    Answer(text: "Professional Athlete", type: .dragon),
                    Answer(text: "Celebrity", type: .unicorn),
                    Answer(text: "Biologist", type: .sylph)
                 ]
                ),
        Question(text: "Who are you in K-Pop Demon Hunters?",
                 type: .single,
                 answers: [
                    Answer(text: "Rumi", type: .dragon),
                    Answer(text: "Mira", type: .unicorn),
                    Answer(text: "Zoey", type: .sylph),
                    Answer(text: "Jinu", type: .kitsune),
                    Answer(text: "Bobby", type: .banshee)
                 ]
                ),
        Question(text: "Favorite yoga poses?",
                 type: .multiple,
                 answers: [
                    Answer(text: "Child's Pose", type: .sylph),
                    Answer(text: "Downward Dog Pose", type: .unicorn),
                    Answer(text: "Tree Pose", type: .banshee),
                    Answer(text: "Warrior Pose", type: .kitsune),
                    Answer(text: "One-Legged King Pigeon Pose", type: .dragon)
                 ]
                ),
        Question(text: "Who is your Saja Boys crush?",
                 type: .single,
                 answers: [
                    Answer(text: "Jinu", type: .kitsune),
                    Answer(text: "Mystery", type: .sylph),
                    Answer(text: "Abby", type: .dragon),
                    Answer(text: "Romance", type: .unicorn),
                    Answer(text: "Baby", type: .banshee)
                 ]
                ),
        Question(text: "What is your main learning style?",
                 type: .single,
                 answers: [
                    Answer(text: "Visual", type: .unicorn),
                    Answer(text: "Auditory", type: .sylph),
                    Answer(text: "Read/Write", type: .banshee),
                    Answer(text: "Kinesthetic(physical)", type: .dragon),
                    Answer(text: "Multi-Modal/Mix of All", type: .kitsune)
                 ]
                ),
        Question(text: "What is your love language?",
                 type: .single,
                 answers: [
                    Answer(text: "Acts of Service", type: .kitsune),
                    Answer(text: "Physical Touch", type: .dragon),
                    Answer(text: "Quality Time", type: .unicorn),
                    Answer(text: "Receiving Gifts", type: .sylph),
                    Answer(text: "Words of Affirmation", type: .banshee)
                 ]
                ),
        Question(text: "How much do you need ice in your drinks?",
                 type: .ranged,
                 answers: [
                    Answer(text: "\(Int(1.0))", type: .dragon),
                    Answer(text: "\(Int(2.0))", type: .kitsune),
                    Answer(text: "\(Int(3.0))", type: .unicorn),
                    Answer(text: "\(Int(4.0))", type: .banshee),
                    Answer(text: "\(Int(5.0))", type: .sylph)
                 ]
                ),
        Question(text: "Is Pluto a planet?",
                 type: .ranged,
                 answers: [
                    Answer(text: "\(Int(1.0))", type: .sylph),
                    Answer(text: "\(Int(2.0))", type: .banshee),
                    Answer(text: "\(Int(3.0))", type: .dragon),
                    Answer(text: "\(Int(4.0))", type: .kitsune),
                    Answer(text: "\(Int(5.0))", type: .unicorn)
                 ]
                ),
        Question(text: "What is your celestial symbol?",
                 type: .single,
                 answers: [
                    Answer(text: "Sun", type: .dragon),
                    Answer(text: "Moon", type: .unicorn),
                    Answer(text: "Star", type: .sylph),
                    Answer(text: "Galaxy", type: .kitsune),
                    Answer(text: "Black Hole", type: .banshee)
                 ]
                ),
        Question(text: "How much do you like Halloween?",
                 type: .ranged,
                 answers: [
                    Answer(text: "\(Int(1.0))", type: .sylph),
                    Answer(text: "\(Int(2.0))", type: .dragon),
                    Answer(text: "\(Int(3.0))", type: .banshee),
                    Answer(text: "\(Int(4.0))", type: .unicorn),
                    Answer(text: "\(Int(5.0))", type: .kitsune)
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
    
    func selectAnswers(_ answers: [SpiritType], forQuestionText text: String) {
        selectedAnswers[text] = answers
    }
    
    func calculateResult() -> SpiritType {
        let allAnswers = selectedAnswers.values.flatMap(\.self)
        
        var counts: [SpiritType: Int] = [ : ]
        
        allAnswers.forEach { spirit in
            if let spiritCount = counts[spirit] {
                counts[spirit] = spiritCount + 1
            } else {
                counts[spirit] = 1
            }
        }
        
        if let (key, _) = counts.max(by: { $0.value < $1.value }) {
            print("The result is \(key)")
            return key
        } else {
            //            This should never be hit
            return .dragon
        }
    }
}
