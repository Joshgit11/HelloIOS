//
//  CustomBackgroundView.swift
//  HelloWorld
//
//  Created by Joshua on 27/05/25.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(
                    colors: [.black, .purple, .blue]),
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
            .shadow(color: .black, radius: 8)
            
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
