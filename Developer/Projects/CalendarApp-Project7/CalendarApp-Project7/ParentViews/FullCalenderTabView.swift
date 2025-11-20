//
//The FullCalender View has Lesson ID, Lesson Name, and Assignments Due.
//No logic for the view, only the viewModel.
//

import SwiftUI

struct MockFullCalenderAPIService: FullCalendarAPIService {
    func fetchFullCalenderOutline() async throws -> LessonOutline? {
//        Do I need to make a miniLesson struct or is there a way to only use some of the LessonOutline here?
        let novOneNine = LessonOutline(lessonID: "ND04", lessonName: "Lab Day", assignmentsDue: "Generics")
    }
}

protocol FullCalendarAPIService {
    func fetchFullCalenderOutline() async throws -> LessonOutline?
}

@Observable
class FullCalenderViewModel {
    var apiService: FullCalendarAPIService
    var lessonOutline: LessonOutline?
    
    init(apiService: FullCalendarAPIService, lessonOutline: LessonOutline) {
        self.apiService = apiService
        self.lessonOutline = lessonOutline
    }
}

struct FullCalenderTabView: View {
    @State var fullCalenderViewModel: FullCalenderViewModel
    
    var body: some View {
        VStack {
            Text("Lesson ID")
//            Lesson ID will be replaced by that date's ID
            Text("Lesson Name")
//            Same for this too
            Text("Assignments Due")
//            List assignments due underneath or next to this text box
        }
    }
}

#Preview {
    FullCalenderTabView(fullCalenderViewModel: FullCalenderViewModel())
}
