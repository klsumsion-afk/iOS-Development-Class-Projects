//
//  ContentView.swift
//  SwiftUI Views
//
//  Created by Karigan Sumsion on 9/23/25.
//

import SwiftUI

struct ContentView: View {
    let string = "Unicorns!"
    
    var body: some View {
            Text("Hello, world!")
            .font(.largeTitle)
            .bold()
            .italic()
            .underline()
        
        Text("This if for your lab")
        Text("Ths is the text element")
            .font(.custom("Zapfino", size: 26))
            .foregroundStyle(.blue)
        
        Text("another element")
            .font(.system(size: 36, weight: .ultraLight, design: .rounded))
        
        Text(string)
            .onAppear(perform: {
                print(UIFont.familyNames)
            })
    }
}

#Preview {
    ContentView()
}
