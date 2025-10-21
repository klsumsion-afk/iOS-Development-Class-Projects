//
//  secondView.swift
//  LifeCycleLab
//
//  Created by Karigan Sumsion on 10/21/25.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                Image(systemName: "wind.snow")
                    .font(.system(size: 300))
                    .foregroundStyle(Color.blue)
            }
        }
    }
}

#Preview {
    SecondView()
}
