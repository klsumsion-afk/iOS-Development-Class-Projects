//
//  ControlView.swift
//  AllOfTheOtherSwiftUI
//
//  Created by Karigan Sumsion on 9/30/25.
//

import Foundation
import SwiftUI

struct ControlView: View {
    @State private var isOn = false
    @State private var textFieldText = ""
    @State private var sliderValue = 0.0
    @State private var pickerValue = "Option 1"
    
    var body: some View {
        VStack {
            Toggle("This is a toggle", isOn: $isOn)
            Toggle(isOn: $isOn) {
                Label("Cat", systemImage: "cat")
            }
            
            TextField("This is a text field", text: $textFieldText, prompt: Text("This is a prompt").font(.custom("Zapfino", size: 18)), axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    
                }
                .onChange(of: textFieldText) {
                    oldValue, newValue in
                    
                    print("Changed from \(oldValue) to \(newValue)")
                }
            
            VStack {
                Text("The slider value is \(sliderValue)")
                Slider(value: $sliderValue )
            }
        }
        
        Picker("My Picker", selection: $pickerValue) {
            ForEach(["Option 1", "Option 2", "Option 3"], id: \.self) {
                item in
                
                Text(item)
                    .tag(item)
            }
        }
    }
}

#Preview {
    ControlView()
}
