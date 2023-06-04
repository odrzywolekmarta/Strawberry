//
//  StrawberryTabView.swift
//  Strawberry
//
//  Created by Majka on 04/06/2023.
//

import SwiftUI

struct StrawberryTabView: View {
    
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Main", systemImage: "text.book.closed")
                }
                .toolbarBackground(.hidden, for: .bottomBar)
            InfoView()
                .tabItem {
                    Label("Info", systemImage: "info")
                }
                .toolbarBackground(.hidden, for: .bottomBar)

        } // tabview
        .tint(.pink)

    }
}

struct StrawberryTabView_Previews: PreviewProvider {
    static var previews: some View {
        StrawberryTabView()
    }
}
