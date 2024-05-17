//
//  ContentView.swift
//  Animations
//
//  Created by Groo on 5/17/24.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    var body: some View {
        Button("Tap here") {
            animationAmount += 0.5
        }
        .padding(40)
        .background(.blue)
        .foregroundColor(.white)
        .clipShape(Circle())
        .blur(radius: (animationAmount - 1) * 2)
        .scaleEffect(animationAmount)
        .animation(.snappy, value: animationAmount)
    }
}

#Preview {
    ContentView()
}
