//
//  AnimationView.swift
//  Strawberry
//
//  Created by Majka on 04/06/2023.
//

import SwiftUI

struct AnimationView: View {
    @State var isAnimating: Bool = false
    
    func randomRotation() -> Double {
        Double.random(in: -90.0...90.0)
    }
    
    func randomPosition(max: CGFloat) -> CGFloat {
        CGFloat.random(in: 0...max)
    }
    var body: some View {
       
        ZStack {
            ForEach(0...24, id: \.self) { item in
                    GeometryReader { geometry in
                    Image("strawberrySymbol")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60)
                        .position(x: randomPosition(max: geometry.size.width), y: randomPosition(max: geometry.size.height))
                        .foregroundColor(Color("CustomPink"))
                        .rotationEffect(.degrees(randomRotation()))
                        .animation(Animation.easeInOut(duration: 75).repeatForever(autoreverses: true).speed(5), value: isAnimating)
                        .onAppear {
                            isAnimating = true
                        }
                    } .edgesIgnoringSafeArea(.top)
                
            }
        }
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
