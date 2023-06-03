//
//  ContentView.swift
//  Strawberry
//
//  Created by Majka on 02/06/2023.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.top)
           
            ScrollView(showsIndicators: false) {
                StrawberryHeaderView()
                
                VStack(spacing: 0) {
                    NutritionView()
                        .padding()
                    
                    FactsTabView()
                    
                    RecipesView()
                        .padding()
                    
                    ExternalWeblinkView()
                    
                    VStack(spacing: 0) {
                        Text("Everything you ever wanted to know about strawberries.")
                            .font(.custom(Constants.customFont, size: 25))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .shadow(radius: 12)
                        Text("You're welcome.")
                            .font(.system(size: 20))
                            .italic()
                            .foregroundColor(.black.opacity(0.5))
                    }
                    .padding()
                    
                } // vstack
            } // scrollview
//            .ignoresSafeArea(.top)
        } // zstack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
