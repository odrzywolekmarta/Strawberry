//
//  RecipesView.swift
//  Strawberry
//
//  Created by Majka on 03/06/2023.
//

import SwiftUI

struct RecipesView: View {
    var body: some View {
        VStack {
            TitleView(title: "Recipes")
            
            
        } // vstack
    }
}

struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView()
            .background(Color("CustomPink"))
    }
}
