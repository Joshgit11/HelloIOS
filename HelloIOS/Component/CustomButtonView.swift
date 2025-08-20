//
//  CustomButtonView.swift
//  HelloWorld
//
//  Created by Joshua on 27/05/25.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(
                    LinearGradient(
                        colors: [.red, .blue],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
            
            Circle()
                .stroke(
                    LinearGradient(colors: [.gray, .black], startPoint: .top, endPoint: .bottom,), lineWidth: 5
                )
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(.black)
        }
        .frame(width: 58, height: 58)
    }
}

#Preview {
    CustomButtonView()
        .previewLayout(.sizeThatFits)
        .padding()
}
