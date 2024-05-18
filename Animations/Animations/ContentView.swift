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
        VStack {
            Button("Tap here") {}
                .padding(40)
                .background(.blue)
                .foregroundColor(.white)
                .clipShape(.circle)
                .scaleEffect(animationAmount)
            Spacer()
            Stepper("Amount of animation", value: $animationAmount.animation(
                .default
            ), in: 1...5)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
