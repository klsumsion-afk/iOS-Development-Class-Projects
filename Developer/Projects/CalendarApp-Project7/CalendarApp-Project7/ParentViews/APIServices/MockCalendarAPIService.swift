//
//  MockCalendarAPIService.swift
//  CalendarApp-Project7
//
//  Created by Karigan Sumsion on 11/21/25.
//

import Foundation

//This is the fake API that we are fetching our data from ->
struct MockCalendarAPIService: CalendarAPIService {
    func fetchTodayOutline() async throws -> LessonOutline? {
        let novemberOneNine = LessonOutline(lessonID: "ND04", lessonName: "Lab Day", mainObjective: "Get Stuff Done", readingDue: "Swift Fundamentals 1.8", assignmentsDue: "Generics", newAssignments: "None", dailyCodeChallenge: "'Binary to Decimal' - Type Conversion", wordOfTheDay: "Assembly")
        return novemberOneNine
    }
}

protocol CalendarAPIService {
    func fetchTodayOutline() async throws -> LessonOutline?
}
