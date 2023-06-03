//
//  RecipesView.swift
//  Strawberry
//
//  Created by Majka on 03/06/2023.
//

import SwiftUI

struct RecipesView: View {
    var body: some View {
        VStack(spacing: 20) {
            TitleView(title: "Recipes")
            
            ForEach(recipesData, id: \.id) { recipe in
                RecipeCardView(recipe: recipe)
            }
        } // vstack
    }
}

struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView()
    }
}
