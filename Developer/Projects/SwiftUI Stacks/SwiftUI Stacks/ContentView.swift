//
//  ContentView.swift
//  SwiftUI Stacks
//
//  Created by Karigan Sumsion on 9/27/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Circle()
                .fill(.yellow)
                .frame(width: 59)
            
            HStack(spacing: 15) {
                Image(systemName: "person.fill")
                    .font(.largeTitle)
                    .offset(x: 11, y: 1)
                
                VStack(alignment: .leading) {
                    Text("Karigan Sumsion")
                        .font(.custom("American Typewriter", size: 25))
                    Text("klsumsion@gmail.com")
                }
                .padding()
            }
        }
    }
}

struct RectangleView: View {
        
    var body: some View {
        
        HStack(spacing: 10) {
            ForEach(1..<4) { index in
                RoundedRectangle(cornerSize: CGSize(width: 15, height: 15))
                    .fill(Color.black)
                    .frame(width: 95, height: 90)
                    .offset(x: 37)
            }
            
                ZStack {
                    Image(systemName: "camera.fill")
                        .foregroundStyle(.yellow)
                        .offset(x: -267, y: -15)
                    Image(systemName: "heart.fill")
                        .foregroundStyle(.yellow)
                        .offset(x: -163, y:-15)
                    Image(systemName: "star.fill")
                        .foregroundStyle(.yellow)
                        .offset(x: -57, y: -15)
                    
                    VStack {
                        Text("posts")
                            .bold()
                            .foregroundStyle(.yellow)
                            .offset(x: -267, y: 31)
                        Text("followers")
                            .bold()
                            .foregroundStyle(.yellow)
                            .offset(x: -162, y: 9)
                        Text("following")
                            .bold()
                            .foregroundStyle(.yellow)
                            .offset(x: -57, y: -11)
                    }
                
            }
        }
            .padding(5)
    }
}

struct PostView: View {
    
    var body: some View {
        
        VStack(spacing: 50) {
            ForEach(1..<4) { index in
            Image(systemName: "fossil.shell.fill")
                    .font(.largeTitle)
                    .frame(width: 100, height: 90)
                    .border(.blue)
            }
        }
    }
    
}

    #Preview {
        ContentView()
        RectangleView()
        PostView()
    }
