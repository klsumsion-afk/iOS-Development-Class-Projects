//
//  MockFullCalenderAPIService.swift
//  CalendarApp-Project7
//
//  Created by Karigan Sumsion on 11/21/25.
//

import Foundation

struct MockFullCalenderAPIService: FullCalendarAPIService {
    func fetchFullCalenderOutlines() async throws -> [LessonOutline] {
        let outlines = [LessonOutline(lessonID: "ND04", lessonName: "Lab Day", assignmentsDue: "Generics"), LessonOutline(lessonID: "ND05", lessonName: "Turn In Project", assignmentsDue: "Project 7")]
        return outlines
    }
}

protocol FullCalendarAPIService {
    func fetchFullCalenderOutlines() async throws -> [LessonOutline]
}
