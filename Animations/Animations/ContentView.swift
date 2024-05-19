//
//  ContentView.swift
//  Animations
//
//  Created by Groo on 5/17/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingElement = false

    var body: some View {
        VStack {
            if isShowingElement {
                Circle()
                    .frame(width: 200)
                    .transition(.asymmetric(insertion: .slide, removal: .push(from: .top)))
            }
                
            Button("Tap Here") {
                withAnimation {
                    isShowingElement.toggle()
                }
            }
            .padding()
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentView()
}
