//
//  MotionAnimation.swift
//  HelloWorld
//
//  Created by Joshua on 27/05/25.
//

import SwiftUI

struct MotionAnimation: View {
    //Mark - properties
    @State private var randomCircle: Int = .random(in: 6...12)
    @State private var isAnimating: Bool = false
    //1. RAMDOM COO RDINATE
    func randomCoordinate() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }
    //2. RANDOM SIZE
    func randomSize() -> CGFloat {
        return CGFloat.random(in: 4...80)
    }
    //3. RANDOM SCALE
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    //4. RANDOM SPEED
    func randomSpeed() -> Double {
        return Double.random(in: 0.05...1.0)
    }
    //5. RANDOM DELY
    func randomDely() -> Double {
        return Double.random(in: 0...2)
    }
    var body: some View {
        ZStack {
            ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                    .foregroundColor(.white)
                    .opacity(0.25)
                    .frame(width: self.randomSize(), height: self.randomSize())
                    .position(x: self.randomCoordinate(), y: self.randomCoordinate())
                    .scaleEffect(isAnimating ? self.randomScale() : 1)
                    .onAppear(perform: {
                        withAnimation(
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDely())
                        ){
                            isAnimating = true
                        }
                    })
            }
        }
        .frame(width: 300, height: 300)
        .mask(Circle())
        .drawingGroup()
    }
}

#Preview {
    MotionAnimation()
        .background(Circle()
            .fill()
        )

}
