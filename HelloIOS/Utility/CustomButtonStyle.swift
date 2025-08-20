//
//  CustomButtonStyle.swift
//  HelloWorld
//
//  Created by Joshua on 27/05/25.
//

import Foundation
import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.isPressed ?
        configuration.label
            .padding(.vertical)
            .padding(.horizontal, 20)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [ .purple, .customSamon ]),
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .cornerRadius(40)
            .scaleEffect(configuration.isPressed ? 1 : 1.1)
            .animation(.easeIn.delay(-1), value: configuration.isPressed)
        : configuration.label
            .padding(.vertical)
            .padding(.horizontal, 20)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [.customSamon, .purple]),
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .cornerRadius(40)
            .scaleEffect(configuration.isPressed ? 1 : 1.1)
            .animation(.easeIn.delay(-1), value: configuration.isPressed)
    }
}
