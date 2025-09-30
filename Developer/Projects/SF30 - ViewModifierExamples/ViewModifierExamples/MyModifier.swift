//
//  MyModifier.swift
//  ViewModifierExamples
//
//  Created by Toby Youngberg on 9/15/25.
//

import SwiftUI

struct MyModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .padding(5)
            .bold()
            .italic()
            .strikethrough()
            .underline()
            .border(.bar)
            .border(.yellow)
            .background(.green)
            .frame(width: 500, height: 500)
            .offset(CGSize.init(width: 20, height: 10))
            .position(x: 30, y: 50)
            .tint(.cyan)
            .overlay(.tint.secondary)
        Text(";)")
            .hidden()
    }
}

extension View {
    func myModifier() -> some View {
        modifier(MyModifier())
    }
}

struct MyDoodleMod: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("American Typewriter", size: 75))
            .frame(width: 250, height: 250)
            .background(.mint)
            .border(.cyan)
    }
}

extension View {
    func myDoodleMod() -> some View {
        modifier(MyDoodleMod())
    }
}
