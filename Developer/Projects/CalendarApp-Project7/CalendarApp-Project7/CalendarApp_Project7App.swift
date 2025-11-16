//
//NOTES:
//As of Nov. 15th I am currently setting up all the views and their UI before beginning the view models and making things function.
//As of later today I have added a tiny bit more info for how I want to set this project up.
//Also ask teacher, how do I know what views will need a viewModel? Are markdowns literally a stack of text in the UI appearence?
//Don't overthink this. Don't overthink this. Focus on linking things together, those links will eventually link to APIs in the future. Focus on using viewModels. 
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
