//
//  FactsTabView.swift
//  Strawberry
//
//  Created by Majka on 03/06/2023.
//

import SwiftUI

struct FactsTabView: View {

    var body: some View {
        VStack(spacing: 0) {
            Text("Facts")
                .font(.custom(Constants.customFont, size: 40))
                .foregroundColor(.white)
                .padding(.bottom, 0)
                .shadow(radius: 12)
            
            TabView {
                ForEach(factsData, id: \.self) { fact in
                    Group {
                        Text(Constants.strawberries)
                            .font(.custom(Constants.customFont, size: 30)) +
                        Text(fact)
                            .font(.system(size: 20))
                    } // group
                    .shadow(radius: 6)
                    .padding()
                    .background(
                        Color("CustomPink")
                            .opacity(0.5)
                            .cornerRadius(20)
                            .frame(height: 220))
                    .padding()
                    .foregroundColor(.white)
    //                .shadow(radius: 6)
                } // foreach
            } // tabview
            .tabViewStyle(.page(indexDisplayMode: .automatic))
            .frame(height: 250)
            .padding(.top, 0)
        }
            
        
    }
}

struct FactsTabView_Previews: PreviewProvider {
    static var previews: some View {
        FactsTabView()
            .background(Color.blue)
            .previewLayout(.sizeThatFits)
    }
}
