//
//  ContentView.swift
//  NavigationPractice
//
//  Created by Karigan Sumsion on 10/8/25.
//

import SwiftUI

struct Student {
    var id: UUID = UUID()
    var name: String
    var favoriteColor: Color
}

let students = [
    Student(name: "Jonny", favoriteColor: .mint),
    Student(name: "Maggie", favoriteColor: .black),
    Student(name: "Amber", favoriteColor: .orange),
    Student(name: "Ben", favoriteColor: .cyan),
    Student(name: "Martin", favoriteColor: .teal),
    Student(name: "Mary", favoriteColor: .indigo),
    Student(name: "Violet", favoriteColor: .purple),
    Student(name: "Eric", favoriteColor: .white),
    Student(name: "Rosie", favoriteColor: .pink),
    Student(name: "Ollie", favoriteColor: .green),
    Student(name: "Meranda", favoriteColor: .red),
    Student(name: "Celeste", favoriteColor: .gray),
    Student(name: "Gibson", favoriteColor: .blue),
    Student(name: "Alice", favoriteColor: .brown),
    Student(name: "Aspen", favoriteColor: .yellow)
]

struct ContentView: View {
    @State private var isPresentingSheet = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Button("Present Sheet") {
                    isPresentingSheet = true
                }
                List(students, id: \.name) {
                    student in
                    NavigationLink {
                        student.favoriteColor
                            .ignoresSafeArea()
                    } label: {
                        Text(student.name)
                    }
                }
                .navigationTitle("Students")
                .sheet(isPresented: $isPresentingSheet) {
                    NavigationStack {
                        Text("Sheet Happens")
                        NavigationLink("GO DEEPER") {
                            Text("Deeper in the sheet")
                        }
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
