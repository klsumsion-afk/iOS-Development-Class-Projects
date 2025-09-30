//
//  ContentView.swift
//  ViewModifierExamples
//
//  Created by Toby Youngberg on 8/27/25.
//

import SwiftUI

struct MyView: View {
  var body: some View {
      Text("Hello World")
          .myModifier()
  }
}

struct Doodle: View {
    var body: some View {
        Text("XoX")
            .myDoodleMod()
    }
}

#Preview {
    MyView()
}

#Preview {
    Doodle()
}
