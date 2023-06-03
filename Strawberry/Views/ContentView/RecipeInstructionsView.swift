//
//  RecipeInstructionsView.swift
//  Strawberry
//
//  Created by Majka on 03/06/2023.
//

import SwiftUI

struct RecipeInstructionsView: View {
    var recipe: Recipe
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Instructions")
                .font(.custom(Constants.customFont, size: 30))
                .foregroundColor(Color("CustomPink"))
            ForEach(recipe.instructions, id: \.self) {
                item in
                VStack(spacing: 5) {
                    Image("strawberrySymbol")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25)
                        .opacity(0.5)
                    Text(item)
                        .font(.system(size: 18))
                        .opacity(0.7)
                        .multilineTextAlignment(.center)
                }
                .padding()
            }
        }
    }
}

struct RecipeInstructionsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeInstructionsView(recipe: recipesData[1])
    }
}
