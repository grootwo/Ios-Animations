//
//  ContentView.swift
//  Animations
//
//  Created by Groo on 5/17/24.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0
    var body: some View {
        VStack {
            Button("Tap here") {
                withAnimation(.spring(duration: 1, bounce: 0.6)) {
                    animationAmount += 360
                }
            }
                .padding(50)
                .background(.blue)
                .foregroundColor(.white)
                .clipShape(.circle)
                .rotation3DEffect(
                    .degrees(animationAmount), axis: (x: 1.0, y: 1.0, z: 1.0))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
