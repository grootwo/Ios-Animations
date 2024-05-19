//
//  ContentView.swift
//  Animations
//
//  Created by Groo on 5/17/24.
//

import SwiftUI

struct ContentView: View {
    let letters = Array("i love you")
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero

    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<letters.count, id: \.self) { num in
                Text(String(letters[num]))
                    .font(.title)
                    .padding(10)
                    .frame(width: 40, height: 40)
                    .background(enabled ? .yellow : .green)
                    .clipShape(.circle)
                    .offset(dragAmount)
                    .animation(.linear.delay(Double(num) / 20), value: dragAmount)
            }
        }
        .gesture(
            DragGesture()
                .onChanged { dragAmount = $0.translation }
                .onEnded { _ in
                    dragAmount = .zero
                    enabled.toggle()
                }
        )
    }
}

#Preview {
    ContentView()
}
