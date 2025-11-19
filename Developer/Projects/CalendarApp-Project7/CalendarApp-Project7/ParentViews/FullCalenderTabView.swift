//
//The FullCalender View has Lesson ID, Lesson Name, and Assignments Due.
//No logic for the view, only the viewModel.
//

import SwiftUI

struct FullCalenderViewModel {
    
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
