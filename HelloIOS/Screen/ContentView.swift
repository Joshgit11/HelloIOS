//
//  ContentView.swift
//  HelloWorld
//
//  Created by Joshua on 26/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.customSamon.edgesIgnoringSafeArea(.all).opacity(0.4)
            CardView()
        }
    }
}

#Preview {
    ContentView()
}
