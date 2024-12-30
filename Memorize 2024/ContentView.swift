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
            CardView()
            CardView()
            CardView()
            CardView()
        }
        .foregroundStyle(.indigo)
        .padding()
    }
}

struct CardView: View {
    @State var isFaceUp = false
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 15)
            if isFaceUp {
                base.fill(Color.white)
                base.strokeBorder(lineWidth: 3)
                Text("🏎️").font(.largeTitle)
            } else {
                base.fill()

            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}





#Preview {
    ContentView()
}
