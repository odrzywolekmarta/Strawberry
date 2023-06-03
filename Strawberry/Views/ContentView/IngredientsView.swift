//
//  IngredientsView.swift
//  Strawberry
//
//  Created by Majka on 03/06/2023.
//

import SwiftUI

struct IngredientsView: View {
    var recipe: Recipe
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Ingredients")
                .font(.custom(Constants.customFont, size: 30))
                .foregroundColor(Color("CustomPink"))
            
            VStack(alignment: .center, spacing: 6) {
                ForEach(recipe.ingredients, id: \.self) { item in
                    Text(item)
                        .font(.system(size: 15))
                        .opacity(0.7)
                    Divider()
                } // foreach
            } // vstack
            .padding()
        } // vstack
    }
}

struct IngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsView(recipe: recipesData[3])
    }
}
