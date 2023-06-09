//
//  RecipeDetailsView.swift
//  Strawberry
//
//  Created by Majka on 03/06/2023.
//

import SwiftUI

struct RecipeDetailsView: View {
    @Binding var showDetails: Bool
    var recipe: Recipe
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                VStack(alignment: .center, spacing: 15) {
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
                }
                .background(.white)
                Text("Enjoy!")
                    .font(.custom(Constants.customFont, size: 25))
                    .foregroundColor(Color("CustomPink"))
                    .padding(.bottom, 20)
            } // vstack
        } // scrollview
        .ignoresSafeArea()
       
    }
}

struct RecipeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailsView(showDetails: .constant(true), recipe: recipesData[0])
    }
}
