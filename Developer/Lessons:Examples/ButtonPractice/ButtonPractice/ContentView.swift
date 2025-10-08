//
//  ContentView.swift
//  ButtonPractice
//
//  Created by Karigan Sumsion on 9/29/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Button(action: {}) {
                Text("Next")
                    .frame(maxWidth: .infinity)
                    .padding(.vertical)
                
            }
            .foregroundStyle(Color.white)
            .background(
                Capsule()
                    .foregroundStyle(Color.gray)
            )
            
            .padding()
        }
    }
}

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
        Text("Submit")
            .foregroundStyle(Color.white)
            .bold()
            .frame(maxWidth: .infinity)
            .padding()
            .background(
                Capsule()
                    .foregroundStyle(LinearGradient(colors: [Color.blue, Color.purple], startPoint: .leading, endPoint: .trailing))
            )
            .scaleEffect(x: 0.97, y: 1.0)
            .animation(.easeOut, value: configuration.isPressed)
    }
}

#Preview {
    ContentView()
    GradientButtonStyle()
}
