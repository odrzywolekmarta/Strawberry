//
//  RecipeCardView.swift
//  Strawberry
//
//  Created by Majka on 03/06/2023.
//

import SwiftUI

struct RecipeCardView: View {
    @State private var showDetails: Bool = false
    var recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .shadow(radius: 6)
            
            VStack(alignment: .leading) {
                Text(recipe.title)
                    .font(.custom(Constants.customFont, size: 25))
                    .foregroundColor(Color("CustomPink"))
                
                Text(recipe.headline)
                    .font(.system(size: 13))
                    .italic()
                    .foregroundColor(.black.opacity(0.4))
            } // vstack
            .padding([.leading, .trailing])
            
            VStack(alignment: .leading, spacing: 10) {
                RatingView(recipe: recipe)
                
                RecipeInfoView(recipe: recipe)
            } // vstack
            .padding([.leading, .trailing, .bottom])
        } // vstack
        .background(.white)
        .cornerRadius(20)
        .shadow(radius: 12)
        .onTapGesture {
            showDetails = true
        }
        .sheet(isPresented: $showDetails) {
            RecipeDetailsView(recipe: recipe)
        }
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[2])
            .previewLayout(.sizeThatFits)
    }
}
