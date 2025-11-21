//
//  LessonOutline.swift
//  CalendarApp-Project7
//
//  Created by Karigan Sumsion on 11/19/25.
//

import Foundation

//This is where our data is stored
struct LessonOutline: Codable, Identifiable {
    var id: UUID = UUID()
    var lessonID: String
    var lessonName: String
    var mainObjective: String
    var readingDue: String
    var assignmentsDue: String
    var newAssignments: String
    var dailyCodeChallenge: String
    var wordOfTheDay: String
    
    init(lessonID: String, lessonName: String, mainObjective: String = "", readingDue: String = "", assignmentsDue: String, newAssignments: String = "", dailyCodeChallenge: String = "", wordOfTheDay: String = "") {
        self.lessonID = lessonID
        self.lessonName = lessonName
        self.mainObjective = mainObjective
        self.readingDue = readingDue
        self.assignmentsDue = assignmentsDue
        self.newAssignments = newAssignments
        self.dailyCodeChallenge = dailyCodeChallenge
        self.wordOfTheDay = wordOfTheDay
    }
}
