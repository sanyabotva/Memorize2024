//
//  ContentView.swift
//  Memorize 2024
//
//  Created by Timur Baiazitov on 30.12.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .foregroundStyle(.indigo)
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: 15)
                    .strokeBorder(lineWidth: 3)
                Text("🏎️").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 15)

            }
        }
    }
}





#Preview {
    ContentView()
}
