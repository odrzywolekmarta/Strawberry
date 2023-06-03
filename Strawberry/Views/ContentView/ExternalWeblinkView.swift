//
//  ExternalWeblinkView.swift
//  Strawberry
//
//  Created by Majka on 03/06/2023.
//

import SwiftUI

struct ExternalWeblinkView: View {
    
    var body: some View {
        VStack(spacing: 0) {
            TitleView(title: "Learn more")
            HStack {
                Group {
                    Image(systemName: "globe")
                    Text("Wikipedia")
                } // group
                Spacer()
                Link(destination: URL(string: "https://en.wikipedia.org/wiki/Strawberry")!) {
                    Group {
                        Image(systemName: "arrow.up.right.square")
                        Text("Strawberries")
                    } // group
                    .tint(.black)
                } // link
            } // hstack
            .padding()
            .background(.white.opacity(0.3))
            .cornerRadius(20)
        .padding()
        } // vstack
    }
}

struct ExternalWeblinkView_Previews: PreviewProvider {
    static var previews: some View {
        ExternalWeblinkView()
            .background(.blue)
    }
}
