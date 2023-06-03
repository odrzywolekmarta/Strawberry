//
//  StartButtonView.swift
//  Strawberry
//
//  Created by Majka on 02/06/2023.
//

import SwiftUI

struct StartButtonView: View {
    @Binding var showEntry: Bool
    private let feedback = UIImpactFeedbackGenerator(style: .heavy)

    var body: some View {
        Button {
            withAnimation {
                showEntry = false
                feedback.impactOccurred()
            }
        } label: {
            HStack {
                Text("Start")
                    .font(.custom(Constants.customFont, size: 20))
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                    .fontWeight(.bold)
                    
            } // hstack
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(lineWidth: 2))
            .foregroundColor(.white)
            .shadow(radius: 12)
        } // button
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView(showEntry: .constant(false))
            .background(.black)
            .previewLayout(.sizeThatFits)
    }
}
