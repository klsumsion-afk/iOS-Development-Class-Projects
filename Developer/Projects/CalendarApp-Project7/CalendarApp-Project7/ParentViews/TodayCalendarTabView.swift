//
//This View has Lesson ID, Lesson Name, Main Objective, Reading Due, Assignments Due, New Assignments, Daily Code Challenge, and Word of the Day.
//All logic is in the view model. 
//
import Foundation
import SwiftUI

//Brain behind the UI
@Observable
class TodayCalendarTabViewModel {
    var apiService: CalendarAPIService
    var lessonOutline: LessonOutline?
    
    init(apiService: CalendarAPIService, lessonOutline: LessonOutline?) {
        self.apiService = apiService
        self.lessonOutline = lessonOutline
    }
}



//UI
struct TodayCalendarTabView: View {
    @State var viewModel: TodayCalendarTabViewModel
    
    var body: some View {
        //        Add ScrollView Later
        
        VStack {
            if let lessonOutline = viewModel.lessonOutline {
                
                HStack {
                    Text("Daily Code Challenge")
                        .padding()
                    Text(lessonOutline.dailyCodeChallenge)
                        .padding()
                    Text("Word of the Day")
                        .padding()
                    Text(lessonOutline.wordOfTheDay)
                }
                HStack {
                    Text("Lesson ID")
                        .padding()
                    Text(lessonOutline.lessonID)
                        .padding()
                    Text("Lesson Name")
                        .padding()
                    
                    Text(lessonOutline.lessonName)
                    
                    
                }
                Text("Main Objective")
                    .padding()
                Text(lessonOutline.mainObjective)
                    .padding()
                HStack {
                    Text("Reading Due")
                        .padding()
                    Text(lessonOutline.readingDue)
                        .padding()
                    Text("Assignments Due")
                        .padding()
                    
                    
                    Text(lessonOutline.assignmentsDue)
                    
                    
                }
                Text("New Assignments")
                    .padding()
                
                
                Text(lessonOutline.newAssignments)
                
                
                
            } else {
                Text("Lesson Outline not found.")
            }
            
            
            
        }
        .padding()
        
        .task {
            do {
                let lessonOutline = try await viewModel.apiService.fetchTodayOutline()
                viewModel.lessonOutline = lessonOutline
            } catch {
                print(error)
            }
        }
        
    }
}

#Preview {
    TodayCalendarTabView(viewModel: TodayCalendarTabViewModel(apiService: MockCalendarAPIService(), lessonOutline: nil
                                                             )
    )
}
