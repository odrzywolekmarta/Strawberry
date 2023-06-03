//
//  InfoView.swift
//  Strawberry
//
//  Created by Majka on 04/06/2023.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                TitleView(title: "Info")
                
                VStack(spacing: 20) {
                    ForEach(infoData, id: \.id) { info in
                        HStack {
                            Text(info.title)
                                .font(.custom(Constants.customFont, size: 20))
                            Spacer()
                            if info.isLink {
                                Link(info.description, destination: URL(string: info.description)!)
                                    .font(.system(size: 18))
                                    .opacity(0.7)
                                    .tint(.white)
                            } else {
                                Text(info.description)
                                    .font(.system(size: 18))
                                    .opacity(0.7)
                            }
                        } // hstack
                        .fixedSize(horizontal: false, vertical: true)
                        Divider()
                    } // foreach
                } // vstack
                .padding()
                .cornerRadius(20)
                Image("strawberrySymbol")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)
                    .opacity(0.7)
                Spacer()
            } // vstack

            .padding()
        } // zstack
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
