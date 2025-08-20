//
//  CardView.swift
//  HelloWorld
//
//  Created by Joshua on 27/05/25.
//

import SwiftUI

struct CardView: View {
    
    @State private var imageNumbers: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    func randomImage(){
        repeat {
            randomNumber = Int.random(in: 1...4)
        } while randomNumber == imageNumbers
        imageNumbers = randomNumber
    }
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hello, SwiftUI!")
                            .foregroundColor(.white)
                            .font(.system(size: 32,))
                        Spacer()
                        Button{
                            print( "Button Tapped" )
                            isShowingSheet.toggle()
                        } label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet) {
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium, .large])
                        }
                    }
                    
                    Text("Welcome to SwiftUI!")
                        .font(.caption)
                        .foregroundColor(.white)
                }
                .padding(.horizontal, 20)
                
            
            ZStack {
                CustomCircleView()
                Image("Image-\(imageNumbers)")
                    .resizable()
                    .scaledToFit()
                    .animation(.default, value: imageNumbers)
            }
                Button {
                    randomImage()
                } label: {
                    Text("Explore more")
                        .shadow(radius: 0.25, x: 1, y:2)
                        
                }
                .buttonStyle(CustomButtonStyle())
            }
        }
        .frame(width: 320, height: 570)
//        .shadow(radius: 8)
    }
}

#Preview {
    CardView()
}
