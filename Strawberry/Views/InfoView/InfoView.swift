//
//  InfoView.swift
//  Strawberry
//
//  Created by Majka on 04/06/2023.
//

import SwiftUI

struct InfoView: View {
    @State private var isAnimating: Bool = false
    private let feedback = UIImpactFeedbackGenerator(style: .heavy)

    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.top)
            
            if isAnimating {
                AnimationView()
//                    .transition(.opacity)
                    .transition(AnyTransition.opacity.animation(.linear(duration: 0.5)))
            }
            
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
                Button {
                    withAnimation(Animation.easeIn(duration: 2.0)) {
//                    withAnimation(.easeOut(duration: 1.5)) {
                        isAnimating.toggle()
                    }
                    feedback.impactOccurred()
                } label: {
                    VStack(spacing: 0) {
                        Image("strawberrySymbol")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40)
                        Text("Tap me.")
                            .font(.system(size: 13))
                            .italic()
                            .foregroundColor(.black)
                    } // vstack
                    .opacity(0.7)
                } // button

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
