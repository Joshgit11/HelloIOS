//
//  SettingsView.swift
//  HelloWorld
//
//  Created by Joshua on 27/05/25.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            //MARK - SECTION: HEADER
            Section {
                HStack {
                    Image(systemName: "bonjour")
                        .font(.system(size: 55, weight: .bold))
                        .foregroundStyle(
                            LinearGradient(
                                gradient: Gradient(colors: [.blue, .purple]),
                                startPoint: .topTrailing,
                                endPoint: .bottomLeading
                            )
                        )
                    
                    
                    Text("Settings")
                        .font(.system(size: 45, weight: .bold))
                        .foregroundStyle(
                            LinearGradient(
                                gradient: Gradient(colors: [.blue, .purple]),
                                startPoint: .topTrailing,
                                endPoint: .bottomLeading
                            )
                        )
                    
                    //                Image(systemName: "laurel.trailing")
                    //                                    .font(.system(size: 65, weight: .bold))
                    
                }
                .padding(.bottom, -10)
                
                
                VStack(alignment: .leading, spacing: 8) {
                    
                    Text("Customize your Hello Swift experience")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    
                    Text("Manage how the app looks, behaves, and interacts with your device. Change themes, update preferences, and explore features — all in one place. Make Hello Swift feel truly yours.")
                        .font(.body)
                        .foregroundColor(.gray)
                }
            }
            .listRowSeparator(.hidden)
            Section(
                header: Text("ABOUT THE APP"),
                footer: HStack {
                    Spacer()
                    Text("Copyright © All rights reserved.")
                    Spacer()
                }
                    .padding(.vertical, 8)
            ){
                CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone",rowContent: "Hello, SwiftUI!" , rowTintColor: .blue)
                CustomListRowView(rowLabel: "Compatibility", rowIcon: "info.circle",rowContent: "iOS, iPadOS" , rowTintColor: .red)
                CustomListRowView(rowLabel: "Technology", rowIcon: "swift",rowContent: "Swift" , rowTintColor: .orange)
                CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces",rowContent: "Joshua D." , rowTintColor: .mint)
                    
            }
        }
    }
}

#Preview {
    SettingsView()
}
