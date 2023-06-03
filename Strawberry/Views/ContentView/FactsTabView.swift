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
            TitleView(title: "Facts")
            
            TabView {
                ForEach(factsData, id: \.self) { fact in
                    Group {
                        Text(Constants.strawberries)
                            .font(.custom(Constants.customFont, size: 25))
                            .foregroundColor(.white)
+
                        Text(fact)
                            .font(.system(size: 20))
                            .foregroundColor(Color.black.opacity(0.8))
                    } // group
                    .shadow(radius: 12)
                    .padding()
                    .background(
                        Color.white
                            .opacity(0.3)
                            .cornerRadius(20)
                            .frame(height: 220))
                    .padding()
//                    .shadow(radius: 6)
                } // foreach
            } // tabview
            .tabViewStyle(.page(indexDisplayMode: .automatic))
            .frame(height: 240)
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
