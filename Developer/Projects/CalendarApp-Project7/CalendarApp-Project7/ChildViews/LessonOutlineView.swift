//
//Make certain to have a MARKDOWN lesson outline display.
//No logic in view.
//

import SwiftUI

protocol LessonOutlineAPIService {
    func fetchLessonOutline() async throws -> String
}


struct LessonOutlineViewModel {
    var text: String
    
    var apiService: LessonOutlineAPIService
}

struct LessonOutlineView: View {
    @State var lessonOutlineViewModel: LessonOutlineViewModel
    
    var body: some View {
        NavigationStack {
            Text(lessonOutlineViewModel.text)
                .task {
                    do {
                        let string = try await lessonOutlineViewModel.apiService.fetchLessonOutline()
                        lessonOutlineViewModel.text = string
                    } catch {
                        print(error)
                    }
                }
        }
    }
}
struct MockLessonAPIService: LessonOutlineAPIService {
    func fetchLessonOutline() async throws -> String {
        return "**ten**"
    }
}

#Preview {
    LessonOutlineView(
        lessonOutlineViewModel: LessonOutlineViewModel(
            text: "",
            apiService: MockLessonAPIService()
        )
    )
}

