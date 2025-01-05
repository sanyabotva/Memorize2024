//
//  ContentView.swift
//  Memorize 2024
//
//  Created by Timur Baiazitov on 30.12.2024.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["🏎️","🚓","🚜","🛺","🛺"]
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundStyle(.indigo)
        .padding()
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp = true
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 15)
            if isFaceUp {
                base.fill(Color.white)
                base.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
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
