//
//  ContentView.swift
//  SelectFlagAnimation
//
//  Created by Groo on 5/21/24.
//

import SwiftUI

struct ContentView: View {
    @State private var rotationAnimationAmount = 0.0
    var body: some View {
        HStack {
            FlagButton(flagName: "🇰🇷")
            FlagButton(flagName: "🇩🇪")
            FlagButton(flagName: "🇦🇺")
        }
        .padding()
    }
}

struct FlagButton: View {
    let flagName: String
    //    @State var isSelected: Bool
    @State private var rotationAnimationAmount = 0.0
    var body: some View {
        Button(flagName) {
            rotationAnimationAmount += 360
        }
        .font(.system(size: 100))
        .rotation3DEffect(
            .degrees(rotationAnimationAmount), axis: (x: 0.0, y: 1.0, z: 0.0)
        )
        .animation(.bouncy(duration: 0.5, extraBounce: 0.3), value: rotationAnimationAmount)
    }
}

#Preview {
    ContentView()
}
