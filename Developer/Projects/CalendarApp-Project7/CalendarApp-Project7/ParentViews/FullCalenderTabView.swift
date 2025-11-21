//
//The FullCalender View has Lesson ID, Lesson Name, and Assignments Due.
//No logic for the view, only the viewModel.
//

import SwiftUI

@Observable
class FullCalenderViewModel {
    var apiService: FullCalendarAPIService
    var lessonOutlines: [LessonOutline]
    
    init(apiService: FullCalendarAPIService, lessonOutlines: [LessonOutline]) {
        self.apiService = apiService
        self.lessonOutlines = lessonOutlines
    }
}

struct FullCalenderTabView: View {
    @State var fullCalenderViewModel: FullCalenderViewModel
    
    
    var body: some View {
        VStack {
            ForEach(fullCalenderViewModel.lessonOutlines) { lessonOutline in
                Text("Lesson ID")
                    .padding()
                Text(lessonOutline.lessonID)
                    .padding()
                Text("Lesson Name")
                    .padding()
                
                Text(lessonOutline.lessonName)
                
                
                    .padding()
                Text("Assignments Due")
                    .padding()
                
                
                Text(lessonOutline.assignmentsDue)
            }
        }
        .padding()
        
        .task {
            do {
                let lessonOutlines = try await fullCalenderViewModel.apiService.fetchFullCalenderOutlines()
                fullCalenderViewModel.lessonOutlines = lessonOutlines
            } catch {
                print(error)
            }
        }
    }
}

#Preview {
    FullCalenderTabView(fullCalenderViewModel: FullCalenderViewModel(apiService: MockFullCalenderAPIService(), lessonOutlines: []))
}
