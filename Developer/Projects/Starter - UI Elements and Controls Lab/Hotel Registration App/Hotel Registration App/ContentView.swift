//
//  ContentView.swift
//  Hotel Registration App
//
//  Created by Jane Madsen on 9/26/25.
//

import SwiftUI
@State private var firstName = ""
@State private var lastName = ""
@State private var doorCode = 0
@State private var numberOfGuests = 0
@State private var lengthOfStay = 0
@State private var nonSmoking = true
@State private var registrationFeedback = 0

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
        }
    }
}

#Preview {
    ContentView()
}
