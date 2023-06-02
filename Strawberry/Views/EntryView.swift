//
//  EntryView.swift
//  Strawberry
//
//  Created by Majka on 02/06/2023.
//

import SwiftUI

struct EntryView: View {
    @State private var pulsateAnimation: Bool = true
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack(spacing: 0) {
                Spacer()
                Image("strawberry")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                    .shadow(radius: 12)
                    .scaleEffect(pulsateAnimation ? 1 : 0.95)
                    .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: pulsateAnimation)
                Text("Strawberries")
                    .font(.custom(Constants.customFont, size: 50))
                    .foregroundColor(.white)
                    .shadow(radius: 12)
                Text(Constants.description)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(
                        Color.white
                            .opacity(0.4)
                            .cornerRadius(30)).padding()
                Button {
                    print("exit entry")
                } label: {
                    HStack {
                        Text("Start")
                            .font(.custom(Constants.customFont, size: 20))
                        Image(systemName: "arrow.right.circle")
                            .imageScale(.large)
                            .fontWeight(.bold)
                            
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 10)
                    .background(Capsule().strokeBorder(lineWidth: 2))
                    .foregroundColor(.white)
                    .shadow(radius: 12)
                }

                Spacer()
            } // vstack
            .onAppear {
                pulsateAnimation.toggle()
            }
        } // zstack
    }
}

struct EntryView_Previews: PreviewProvider {
    static var previews: some View {
        EntryView()
    }
}
