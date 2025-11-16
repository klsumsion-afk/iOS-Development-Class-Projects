//
//This View has Lesson ID, Lesson Name, Main Objective, Reading Due, Assignments Due, New Assignments, Daily Code Challenge, and Word of the Day.
//All logic is in the view model. 
//

import SwiftUI

struct TodayCalendarTabView: View {
    var body: some View {
//        Add ScrollView Later
        VStack {
            HStack {
                Text("Daily Code Challenge")
//                List current code challenge underneath
                    .padding()
                Text("Word of the Day")
//                Same for this and all the stuff below too 
            }
            HStack {
                Text("Lesson ID")
                    .padding()
                Text("Lesson Name")
            }
            Text("Main Objective")
                .padding()
            HStack {
                Text("Reading Due")
                    .padding()
                Text("Assignments Due")
            }
            Text("New Assignments")
            
                    }
        .padding()
    }
}

#Preview {
    TodayCalendarTabView()
}
