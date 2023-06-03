//
//  StrawberryHeaderView.swift
//  Strawberry
//
//  Created by Majka on 03/06/2023.
//

import SwiftUI

struct StrawberryHeaderView: View {
    @State private var showHeadline: Bool = false
    
    var slideInAnimation: Animation {
      Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
        .speed(1)
        .delay(0.25)
    }
    
    var body: some View {
        ZStack {
            Image("bowl")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .shadow(radius: 12)
            HStack {
                ZStack {
                    Rectangle()
                        .frame(width: 375, height: 100)
                        .foregroundColor(.black.opacity(0.3))
                    
                    VStack(alignment: .leading, spacing: 0) {
                        TitleView(title: "Strawberries")
                        
                        Text(Constants.headerDescription)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .shadow(radius: 12)
                    } // vstack

                } // zstack
                .animation(slideInAnimation, value: showHeadline)
                .offset(x: showHeadline ? 0 : 400, y: 70)
                Spacer()
            } // hstack
            .onAppear {
                showHeadline = true
            }
            .onDisappear {
                showHeadline = false
            }
        } // zstack
        .frame(height: 300, alignment: .center)
    }
}

struct StrawberryHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        StrawberryHeaderView()
            .previewLayout(.sizeThatFits)
    }
}
