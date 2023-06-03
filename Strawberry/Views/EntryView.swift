//
//  EntryView.swift
//  Strawberry
//
//  Created by Majka on 02/06/2023.
//

import SwiftUI

struct EntryView: View {
    @State private var pulsateAnimation: Bool = true
    @State private var showEntry: Bool = true
    var body: some View {
        if showEntry {
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
                    Text(Constants.description1)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .padding()
                        .background(
                            Color.white
                                .opacity(0.4)
                                .cornerRadius(30)).padding()
                    StartButtonView(showEntry: $showEntry)
                    Spacer()
                } // vstack
                .onAppear {
                    pulsateAnimation.toggle()
                }
            } // zstack
            .transition(.move(edge: .bottom))
        } else {
            ContentView()
        }
        
    }
}

struct EntryView_Previews: PreviewProvider {
    static var previews: some View {
        EntryView()
    }
}
