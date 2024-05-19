//
//  ContentView.swift
//  Animations
//
//  Created by Groo on 5/17/24.
//

import SwiftUI

struct ContentView: View {
    @State private var dragAmount = CGSize.zero
    var body: some View {
        RadialGradient(colors: [.cyan, .green, .yellow], center: .center, startRadius: 180, endRadius: 0)
            .frame(width: 350, height: 350)
            .clipShape(.rect(cornerRadius: 20))
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged { dragAmount = $0.translation }
                    .onEnded { _ in
                        withAnimation(.smooth) {
                            dragAmount = CGSize.zero
                        }
                    }
            )
//            .animation(.smooth, value: dragAmount)
    }
}

#Preview {
    ContentView()
}
