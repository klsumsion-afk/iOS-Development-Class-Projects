//
//  ContentView.swift
//  CalendarApp-Project7
//
//  Created by Karigan Sumsion on 11/21/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Today's Calendar", systemImage: "ellipsis.calendar") {
                TodayCalendarTabView(viewModel: TodayCalendarTabViewModel(apiService: MockCalendarAPIService(), lessonOutline: nil))
            }
            Tab("Full Calendar", systemImage: "calendar") {
                FullCalenderTabView(fullCalenderViewModel: FullCalenderViewModel(apiService: MockFullCalenderAPIService(), lessonOutlines: []))
            }
        }
    }
}
