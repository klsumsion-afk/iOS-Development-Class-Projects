//
//Text fields for anwsering questions and a submit button will be on this view.
//Remember logic is not in the view.
//

import SwiftUI


struct SubmitFeedbackViewModel {
    var qOne, qTwo, qThree: String
//    var qTwo: String
//    var qThree: String
}

struct SubmitFeedbackView: View {
    @State var submitFeedbackViewModel: SubmitFeedbackViewModel
    
    var body: some View {
        VStack {
           
            Text("What went well in today's lesson?")
            TextField("answer here", text: $submitFeedbackViewModel.qOne)
                .padding()
            
            Text("What are you still confused about?")
            TextField("be honest", text: $submitFeedbackViewModel.qTwo)
                .padding()
            
            Text("What suggestions for activities or changes to the lesson do you have?")
            TextField("tell me everything", text: $submitFeedbackViewModel.qThree)
            
                .onChange(of: submitFeedbackViewModel.qOne) {
                    oldValue, newValue in
                }
            
                .onChange(of: submitFeedbackViewModel.qTwo) {
                    oldValue, newValue in
                }
            
                .onChange(of: submitFeedbackViewModel.qThree) {
                    oldValue, newValue in
                }
                .padding()
            
            Button(action: { }) {
                Text("Submit")
            }
        }
    }
}

#Preview {
    SubmitFeedbackView(submitFeedbackViewModel: SubmitFeedbackViewModel(qOne: "", qTwo: "", qThree: ""))
}
