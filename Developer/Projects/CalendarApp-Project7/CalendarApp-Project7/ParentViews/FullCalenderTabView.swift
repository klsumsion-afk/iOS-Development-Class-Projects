//
//The FullCalender View has Lesson ID, Lesson Name, and Assignments Due.
//No logic for the view, only the viewModel.
//

import SwiftUI

struct MockFullCalenderAPIService: FullCalendarAPIService {
    func fetchFullCalenderOutline() async throws -> LessonOutline? {
        let novOneNine = LessonOutline(lessonID: "ND04", lessonName: "Lab Day", assignmentsDue: "Generics")
        return novOneNine
    }
}

protocol FullCalendarAPIService {
    func fetchFullCalenderOutline() async throws -> LessonOutline?
}

@Observable
class FullCalenderViewModel {
    var apiService: FullCalendarAPIService
    var lessonOutline: LessonOutline?
    
    init(apiService: FullCalendarAPIService, lessonOutline: LessonOutline?) {
        self.apiService = apiService
        self.lessonOutline = lessonOutline
    }
}

struct FullCalenderTabView: View {
    @State var fullCalenderViewModel: FullCalenderViewModel
    
    
    var body: some View {
        
        
        VStack {
            if let lessonOutline = fullCalenderViewModel.lessonOutline {
                
                Text("Lesson ID")
                    .padding()
                Text(lessonOutline.lessonID)
                    .padding()
                Text("Lesson Name")
                    .padding()
                NavigationLink(destination: LessonOutlineView(lessonOutlineViewModel: LessonOutlineViewModel(text: "", apiService: MockLessonAPIService()))) {
                    Label: do {
                        Text(lessonOutline.lessonName)
                    }
                }
                    .padding()
                Text("Assignments Due")
                    .padding()
                NavigationLink(destination: AssignmentOutlineView(assignmentOutlineViewModel: AssignmentOutlineViewModel(text: "", apiService: MockAssignmentAPIService()))) {
                    Label: do {
                        Text(lessonOutline.assignmentsDue)
                    }
                }
            } else {
                Text("Lesson Outline not found.")
            }
        }
        .padding()
        
        .task {
            do {
                let string = try await fullCalenderViewModel.apiService.fetchFullCalenderOutline()
                fullCalenderViewModel.lessonOutline = string
            } catch {
                print(error)
            }
        }
    }
}

#Preview {
    FullCalenderTabView(fullCalenderViewModel: FullCalenderViewModel(apiService: MockFullCalenderAPIService(), lessonOutline: nil))
}
