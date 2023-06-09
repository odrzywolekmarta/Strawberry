//
//  NutritionView.swift
//  Strawberry
//
//  Created by Majka on 03/06/2023.
//

import SwiftUI

struct NutritionView: View {
    var body: some View {
        VStack(spacing: 0) {
           TitleView(title: "Nutrition")

            HStack {
                VStack(alignment: .trailing, spacing: 0) {
                    ForEach(Array(nutritionData1.keys), id: \.self) { key in
                        VStack(alignment: .trailing, spacing: 4) {
                            Text(key)
                                .opacity(0.8)
                                .padding(.trailing, 5)
                            Text(nutritionData1[key] ?? "")
                                .opacity(0.8)
                                .padding(.trailing, 5)
                            Divider()
                                .frame(height: 2)
                                .overlay(.black.opacity(0.1))
                        } // vstack
                    } // foreach
                } // vstack
                
                VStack(alignment: .center, spacing: 16) {
                  HStack {
                    Divider()
                          .frame(width: 2)
                          .overlay(.black.opacity(0.1))
                  } // hstack
                  
                  Image("strawberrySymbol")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .opacity(0.4)
                    
                  HStack {
                    Divider()
                          .frame(width: 2)
                          .overlay(.black.opacity(0.1))
                  } // hstack
                } // vstack
                
                VStack(alignment: .leading, spacing: 0) {
                    ForEach(Array(nutritionData2.keys), id: \.self) { key in
                        VStack(alignment: .leading, spacing: 4) {
                            Text(key)
                                .padding(.leading, 5)
                            Text(nutritionData2[key] ?? "")
                                .padding(.leading, 5)
                            Divider()
                                .frame(height: 2)
                                .overlay(.black.opacity(0.1))
                        } // vstack
                    } // foreach
                } // vstack
            } // hstack
        .font(.system(size: 18))
        .shadow(radius: 12)
        .frame(height: 280)
        }
    }
}

struct NutritionView_Previews: PreviewProvider {
    static var previews: some View {
        NutritionView()
            .background(Color("CustomPink"))
            .previewLayout(.sizeThatFits)
    }
}
