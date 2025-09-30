//
//  ContentView.swift
//  ButtonsLab
//
//  Created by Karigan Sumsion on 9/29/25.
//

import SwiftUI

struct ContentView: View {
    @State private var secondButtonIsDisabled = true
    @State private var thirdButtonIsDisabled = true
    @State private var fourthButtonIsDisabled = true
    @State private var fifthButtonIsDisabled = true
    @State private var sixthButtonIsDisabled = true
    @State private var seventhButtonIsDisabled = true
    @State private var eighthButtonIsDisabled = true
    @State private var ninthButtonIsDisabled = true
    @State private var tenthButtonIsDisabled = true
    var body: some View {
        VStack {
            //            First Button
            Button(action: activate2ndButton) {
                Image(systemName: "plus")
                    .imageScale(.large)
                    .frame(width: 20, height: 20)
                    .padding()
                    .background(
                        Capsule()
                            .foregroundStyle(Color.black)
                    )
            }
            
            .padding()
        }
        //        Second Button
        Button(action: activate3rdButton) {
            Text("Second Button")
                .padding()
            
        }
        .buttonStyle(MyCustomButtonStyle(isDisabled: secondButtonIsDisabled))
        
        //        Third Button
        Button(action: activate4thButton) {
            Text("Third Button")
                .padding()
        }
        .buttonStyle(My3rdButton(isDisabled: thirdButtonIsDisabled))
        
        //        Fourth Button
        Button(action: activate5thButton) {
            Text("Fourth Button")
                .padding()
        }
        .buttonStyle(My4thButton(isDisabled: fourthButtonIsDisabled))
        
        //        Fifth Button
        Button(action: activate6thButton) {
            Text("Fifth Button")
                .padding()
        }
        .buttonStyle(My5thButton(isDisabled: fifthButtonIsDisabled))
        
        //        Sixth Button
        Button(action: activate7thButton) {
            Text("Sixth Button")
                .padding()
        }
        .buttonStyle(My6thButton(isDisabled: sixthButtonIsDisabled))
        
//        Seventh Button
        Button(action: activate8thButton) {
            Text("Seventh Button")
                .padding()
        }
        .buttonStyle(My7thButton(isDisabled: seventhButtonIsDisabled))

//        Eighth Button
        Button(action: activate9thButton) {
            Text("Eighth Button")
                .padding()
        }
        .buttonStyle(My8thButton(isDisabled: eighthButtonIsDisabled))

//        Ninth Button
        Button(action: activate10thButton) {
            Text("Ninth Button")
                .padding()
        }
        .buttonStyle(My9thButton(isDisabled: ninthButtonIsDisabled))

//        Tenth Button (does nothing)
        Button(action: {}) {
            Text("Tenth Button")
                .padding()
        }
        .buttonStyle(My10thButton(isDisabled: tenthButtonIsDisabled))

    }
    
//    First Button + disable all buttons
    func activate2ndButton() {
        secondButtonIsDisabled.toggle()
        if thirdButtonIsDisabled == false {
            thirdButtonIsDisabled = true
        }
        if fourthButtonIsDisabled == false {
            fourthButtonIsDisabled = true
        }
        if fifthButtonIsDisabled == false {
            fifthButtonIsDisabled = true
        }
        if sixthButtonIsDisabled == false {
            sixthButtonIsDisabled = true
        }
        if seventhButtonIsDisabled == false {
            seventhButtonIsDisabled = true
        }
        if eighthButtonIsDisabled == false {
            eighthButtonIsDisabled = true
        }
        if ninthButtonIsDisabled == false {
            ninthButtonIsDisabled = true
        }
        if tenthButtonIsDisabled == false {
            tenthButtonIsDisabled = true
        }

    }
    
//    Second Button
    func activate3rdButton() {
        if !secondButtonIsDisabled {
            thirdButtonIsDisabled.toggle()
        }
    }
    
//    Third Button
    func activate4thButton() {
        if !thirdButtonIsDisabled {
            fourthButtonIsDisabled.toggle()
        }
    }
    
//    Fourth Button
    func activate5thButton() {
        if !fourthButtonIsDisabled {
            fifthButtonIsDisabled.toggle()
        }
    }
    
//    Fifth Button
    func activate6thButton() {
        if !fifthButtonIsDisabled {
            sixthButtonIsDisabled.toggle()
        }
    }
    
//    Sixth Button
    func activate7thButton() {
        if !sixthButtonIsDisabled {
            seventhButtonIsDisabled.toggle()
        }
    }
    
//    Seventh Button
    func activate8thButton() {
        if !seventhButtonIsDisabled {
            eighthButtonIsDisabled.toggle()
        }
    }
    
//    Eighth Button
    func activate9thButton() {
        if !eighthButtonIsDisabled {
            ninthButtonIsDisabled.toggle()
        }
    }
    
//    Ninth Button
    func activate10thButton() {
        if !ninthButtonIsDisabled {
            tenthButtonIsDisabled.toggle()
        }
    }
}

//All of the Structs
struct MyCustomButtonStyle: ButtonStyle {
    var isDisabled: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .foregroundStyle(isDisabled ? .gray : .red)
    }
}

struct My3rdButton: ButtonStyle {
    var isDisabled: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .foregroundStyle(isDisabled ? .gray : .orange)
    }
}

struct My4thButton: ButtonStyle {
    var isDisabled: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .foregroundStyle(isDisabled ? .gray : .yellow)
    }
}

struct My5thButton: ButtonStyle {
    var isDisabled: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .foregroundStyle(isDisabled ? .gray : .green)
    }
}

struct My6thButton: ButtonStyle {
    var isDisabled: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .foregroundStyle(isDisabled ? .gray : .mint)
    }
}

struct My7thButton: ButtonStyle {
    var isDisabled: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .foregroundStyle(isDisabled ? .gray : .cyan)
    }
}

struct My8thButton: ButtonStyle {
    var isDisabled: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .foregroundStyle(isDisabled ? .gray : .blue)
    }
}

struct My9thButton: ButtonStyle {
    var isDisabled: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .foregroundStyle(isDisabled ? .gray : .indigo)
    }
}

struct My10thButton: ButtonStyle {
    var isDisabled: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .foregroundStyle(isDisabled ? .gray : .purple)
    }
}

#Preview {
    ContentView()
}
