//
//This too will have a MARKDOWN assignment outline display. Plus check-off assignments.
//No Logic, that is for the viewModel.
//

import SwiftUI

protocol AssignmentOutlineAPIService {
    func fetchAssignmentOutline() async throws -> String
}


struct AssignmentOutlineViewModel {
    var text: String
    var apiService: AssignmentOutlineAPIService
    
}

struct AssignmentOutlineView: View {
    @State var assignmentOutlineViewModel: AssignmentOutlineViewModel
    
    var body: some View {
        NavigationStack {
            
            Text(assignmentOutlineViewModel.text)
                .task {
                    do {
                        let string = try await
                        assignmentOutlineViewModel.apiService.fetchAssignmentOutline()
                        assignmentOutlineViewModel.text = string
                    } catch {
                        print(error)
                    }
                }
                .padding()
            
            Button(action: { }) {
                Text("Mark Complete")
            }
            
        }
    }
}

struct MockAssignmentAPIService:
    AssignmentOutlineAPIService {
    func fetchAssignmentOutline() async throws -> String {
        return "**Bold**"
    }
}

#Preview {
    AssignmentOutlineView(
        assignmentOutlineViewModel:
            AssignmentOutlineViewModel(
                text: "",
                apiService:
                    MockAssignmentAPIService()
            )
    )
}
