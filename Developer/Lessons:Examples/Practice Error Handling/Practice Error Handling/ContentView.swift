//
//  ContentView.swift
//  Practice Error Handling
//
//  Created by Karigan Sumsion on 10/30/25.
//

import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var errorMessage: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Login")
                .font(Font.largeTitle)
                .bold()
            
            TextField("Email", text: $email)
            
            SecureField("Password", text: $password)
            
            Button("Login") {
                do {
                    try lookupUsernameAndPassword(email: email, password: password)
                    try validateEmail(email)
                    
//                    Login
                } catch {
                    errorMessage = error.localizedDescription
                }
            }
        }
        .padding()
        func lookupUsernameAndPassword(email: email, password: password) throws {
            if !UserDatabase.users.contains(email) {
                throw ValidationError.userNotFound
            }
        }
        
        func validateEmail(_ email: String) throws {
            if email.isValidEmail {
                throw ValidationError.invalidEmail
            }
        }
    }
}

extension String {
    var isValidEmail: Bool {
        if self.contains(".com") {
            return true
        } else {
            return false
        }
    }
    
    class UserDatabase {
        static let users: [String] = [ ]
    }
    
    enum ValidationError: LocalizedError {
        case userNotFound
        case invalidEmail
        var errorDescription: String? {
            switch self {
            case . userNotFound:
                return "User not found. Please try again."
            case .invalidEmail:
                return "Invalid email."
            }
        }
    }
}
#Preview {
    ContentView()
}
