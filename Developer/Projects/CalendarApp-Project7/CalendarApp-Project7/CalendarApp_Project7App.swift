//
//As of Nov. 15th I am currently setting up all the views and their UI before beginning the view models and making things function.
//

import SwiftUI

@main
struct CalendarApp_Project7App: App {
    var body: some Scene {
        WindowGroup {
            TodayCalendarTabView()
            FullCalenderTabView()
        }
    }
}
