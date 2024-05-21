//
//  ContentView.swift
//  SelectFlagAnimation
//
//  Created by Groo on 5/21/24.
//

import SwiftUI

struct ContentView: View {
    @State private var rotationAnimationAmount = 0.0
    @State private var selectedFlag: String = ""
    var body: some View {
        HStack {
            FlagButton(flagName: "🇰🇷", selectedFlag: $selectedFlag)
            FlagButton(flagName: "🇩🇪", selectedFlag: $selectedFlag)
            FlagButton(flagName: "🇦🇺", selectedFlag: $selectedFlag)
        }
        .padding()
    }
}

struct FlagButton: View {
    let flagName: String
    @Binding var selectedFlag: String
    @State private var rotationAnimationAmount = 0.0
    var isSelected: Bool {
        flagName == selectedFlag
    }
    var body: some View {
        Button(flagName) {
            rotationAnimationAmount += 360
            selectedFlag = flagName
            print(selectedFlag)
            print(isSelected)
        }
        .font(.system(size: 100))
        .rotation3DEffect(
            .degrees(rotationAnimationAmount), axis: (x: 0.0, y: 1.0, z: 0.0)
        )
        .animation(.bouncy(duration: 0.5, extraBounce: 0.3), value: rotationAnimationAmount)
        .opacity(isSelected ? 1 : 0.25)
        .animation(.smooth, value: isSelected)
    }
}

#Preview {
    ContentView()
}
