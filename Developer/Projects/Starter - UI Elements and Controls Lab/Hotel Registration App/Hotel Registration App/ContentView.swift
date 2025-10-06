//
//  ContentView.swift
//  Hotel Registration App
//
//  Created by Jane Madsen on 9/26/25.
//

import Foundation
import SwiftUI

struct ContentView: View {

    var body: some View {
        ZStack {
            Color.background
                .ignoresSafeArea()
            
            HotelRegistrationScreen()
        }
    }
}

struct HotelRegistrationScreen: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var doorCode = ""
    @State private var numberOfGuests = "1"
    @State private var lengthOfStay = 0
    @State private var nonSmoking = true
    @State private var registrationFeedback = 0.0
    @State private var submitted = false
    
    var body: some View {
        VStack {
            HStack {
                Image("mountainlandLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                
                Text("Mountainland Inn")
                    .font(.custom("Verdana", size: 30))
                    .bold()
                    .foregroundStyle(Color.background)
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(.highlight)
                    }
            }
            
            Spacer()
            
            Text("Welcome!")
                .font(.custom("Rockwell", size: 20))
                .foregroundStyle(.text)
            
            Spacer()
            
            TextField("This is a text field", text: $firstName, prompt: Text("First Name").font(.custom("Rockwell", size: 18)), axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    
                }
                .onChange(of: firstName) {
                    oldValue, newValue in
                    
                    print("Changed from \(oldValue) to \(newValue)")
                }
            
            TextField("This is a text field", text: $lastName, prompt: Text("Last Name").font(.custom("Rockwell", size: 18)), axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    
                }
                .onChange(of: lastName) {
                    oldValue, newValue in
                    
                    print("Changed from \(oldValue) to \(newValue)")
                }
            
            SecureField("This is a text field", text: $doorCode, prompt: Text("Door Code").font(.custom("Rockwell", size: 18)))
                .keyboardType(.numberPad)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    
                }
                .onChange(of: doorCode) {
                    oldValue, newValue in
                    
                    print("Changed from \(oldValue) to \(newValue)")
                }
            
            Picker("My Picker", selection: $numberOfGuests) {
                ForEach(["1", "2", "3", "4", "5", "6"], id: \.self) {
                    item in
                    
                    Text(item)
                        .tag(item)
                }
            }
            
            Stepper("Length of Stay: \(lengthOfStay) Days", value: $lengthOfStay)
            
            Toggle("NonSmoking", isOn: $nonSmoking)
           
            Button(action: submit) {
                Text("Submit")
            }
            
        }
        HStack {
            if submitted == true {
                Text("Thank you for booking with us!")
                
                Slider(value: $registrationFeedback)
                
                HStack() {
                    ForEach(1..<6) { index in
                      Image(systemName: "star")
                            .offset(x: -145 , y: 25)
                    }
                }
            }
        }
    }
    
    func submit() {
        submitted.toggle()
    }

    

    
}

#Preview {
    ContentView()
}
