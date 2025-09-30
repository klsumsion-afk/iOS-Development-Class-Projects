import UIKit

var greeting = "Hello, playground"

import SwiftUI

struct Myview: View {
    var weirdVar: Int = 42
    var anotherOne: String = "hello"
    
    var body: some View {
        VStack{
            Text("Title")
                .font(.largeTitle)
                .foregroundColor(.red)
                .padding()
                .background(Color.yellow)
                .cornerRadius(10)
                .shadow(radius:5)
                .padding()
                .border(Color.black)
                .padding(5)
                .opacity(0.9)
            
            HStack(spacing:3){
                Text("Count: \(myfunc(myInt: weirdVar))")
                    .font(.body)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(3)
                
                Button("Click"){print("button clicked")}
            }
            .padding(3)
            .background(Color.gray)
            .cornerRadius(7)
            
        }
        .padding(1)
        .background(Color.blue)
        .cornerRadius(4)
        .padding(2)
    }
}

// bad function name and inconsistent parameters
func myfunc(myInt: Int) -> Int {
    var total = 0
    for i in 0...myInt
    {
        total = total + i
    }
    if (total > 100) {
        print("big number")
    } else {
        print("small")
    }
    return total
}

// inconsistent struct name, weird capitalization
struct Contentview: View {
    var body: some View {
        Myview()
    }
}









