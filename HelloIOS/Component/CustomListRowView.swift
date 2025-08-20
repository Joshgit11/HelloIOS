//
//  CustomListRowView.swift
//  HelloWorld
//
//  Created by Joshua on 28/05/25.
//

import SwiftUI

struct CustomListRowView: View {
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String
    @State var rowTintColor: Color
    var body: some View {
        LabeledContent{
            Text(rowContent)
                .foregroundColor(.black)
                .fontWeight(.black)
        } label: {
            HStack  {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 30, height: 30)
                    .foregroundColor(rowTintColor)
                Image(systemName: rowIcon)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
            }
            
                Text(rowLabel)
                
            }
        }
    }
}

#Preview {
    List {
        CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone",rowContent: "Hello, SwiftUI!" , rowTintColor: .blue)    }
}
