//
//  RecipeInfoView.swift
//  Strawberry
//
//  Created by Majka on 03/06/2023.
//

import SwiftUI

struct RecipeInfoView: View {
    var recipe: Recipe
    
    var body: some View {
        HStack {
            HStack(spacing: 2) {
                Image(systemName: "person")
                Text("Serves: \(recipe.serves)")
            } // hstack
            
            HStack(spacing: 2) {
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            } // hstack
            
            HStack(spacing: 2) {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            } // hstack
        } // hstack
        .opacity(0.5)
    }
}

struct RecipeInfoView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeInfoView(recipe: recipesData[0])
    }
}
