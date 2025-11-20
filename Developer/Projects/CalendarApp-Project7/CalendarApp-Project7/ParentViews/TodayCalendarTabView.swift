//
//This View has Lesson ID, Lesson Name, Main Objective, Reading Due, Assignments Due, New Assignments, Daily Code Challenge, and Word of the Day.
//All logic is in the view model. 
//
import Foundation
import SwiftUI

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

//Brain behind the UI
@Observable
class TodayCalendarTabViewModel {
    var apiService: CalendarAPIService
    var lessonOutline: LessonOutline?
    
    init(apiService: CalendarAPIService, lessonOutline: LessonOutline) {
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
            HStack {
//                What is the best way to unwrap all of these optionals because I don't think ?? is the best solution?
                Text("Daily Code Challenge")
                    .padding()
                Text(viewModel.lessonOutline?.dailyCodeChallenge ?? <#default value#>)
                    .padding()
                Text("Word of the Day")
                    .padding()
                Text(viewModel.lessonOutline?.wordOfTheDay ?? <#default value#>)
            }
            HStack {
                Text("Lesson ID")
                    .padding()
                Text(viewModel.lessonOutline?.lessonID ?? <#default value#>)
                    .padding()
                Text("Lesson Name")
                    .padding()
                Text(viewModel.lessonOutline?.lessonName ?? <#default value#>)
            }
            Text("Main Objective")
                .padding()
            Text(viewModel.lessonOutline?.mainObjective ?? <#default value#>)
                .padding()
            HStack {
                Text("Reading Due")
                    .padding()
                Text(viewModel.lessonOutline?.readingDue ?? <#default value#>)
                    .padding()
                Text("Assignments Due")
                    .padding()
                Text(viewModel.lessonOutline?.assignmentsDue ?? <#default value#>)
            }
            Text("New Assignments")
                .padding()
            Text(viewModel.lessonOutline?.newAssignments ?? <#default value#>)
            
                    }
        .padding()
        
        .task {
            do {
                let string = try await viewModel.apiService.fetchTodayOutline()
                viewModel.lessonOutline = string
            } catch {
                print(error)
            }
        }
        
    }
}

#Preview {
    TodayCalendarTabView(viewModel: TodayCalendarTabViewModel(apiService: MockCalendarAPIService(), lessonOutline: nil
//                                                              Why is the nil broken?
        )
    )
}
