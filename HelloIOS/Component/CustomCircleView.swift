//
//  CustomCircleView.swift
//  HelloWorld
//
//  Created by Joshua on 27/05/25.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient: Bool = false
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [.blue, .purple]),
                        startPoint: isAnimateGradient ? .topLeading : .bottomLeading,
                        endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing
                    )
                )
                .onAppear {
                    withAnimation(.linear(duration: 2).repeatForever(autoreverses: true)) {
                        self.isAnimateGradient.toggle()
                    }
                }
            MotionAnimation()
                
        }
        .frame(width: 300, height: 300)
    }
}

#Preview {
    CustomCircleView()
}
