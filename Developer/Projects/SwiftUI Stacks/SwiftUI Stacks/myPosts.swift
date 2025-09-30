//
//  myPosts.swift
//  SwiftUI Stacks
//
//  Created by Karigan Sumsion on 9/28/25.
//
import SwiftUI

struct AnotherContentView: View {
    
    var boby: some View {
        
        HStack(spacing: 10) {
            ForEach(1..<4) { index in
                RoundedRectangle(cornerSize: CGSize(width: 15, height: 15))
                    .fill(Color.black)
                    .frame(width: 95, height: 90)
            }
        }
    }
}
