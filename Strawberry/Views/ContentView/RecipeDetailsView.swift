//
//  RecipeDetailsView.swift
//  Strawberry
//
//  Created by Majka on 03/06/2023.
//

import SwiftUI

struct RecipeDetailsView: View {
    var recipe: Recipe
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 6)
                
                Text(recipe.title)
                    .font(.custom(Constants.customFont, size: 35))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("CustomPink"))
                    .padding([.leading, .trailing])
                
                RatingView(recipe: recipe)
                
                RecipeInfoView(recipe: recipe)
                
                IngredientsView(recipe: recipe)
                
                RecipeInstructionsView(recipe: recipe)
                
                Text("Enjoy!")
                    .font(.custom(Constants.customFont, size: 25))
                    .foregroundColor(Color("CustomPink"))
            } // vstack
            .background(.white)
        }
    }
}

struct RecipeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailsView(recipe: recipesData[0])
    }
}
