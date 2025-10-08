//
//  MainTabView.swift
//  Recipe Tracker (Navigation Lab)
//
//  Created by Jane Madsen on 10/8/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            MyRecipesScreen()
                .tabItem {
                    Label("Manage Recipes", systemImage: "fork.knife")
                }
            DiscoverScreen()
                .tabItem {
                    Label("New Recipes to Try", systemImage: "stove")
                }
        }
    }
}



#Preview {
    MainTabView()
}
