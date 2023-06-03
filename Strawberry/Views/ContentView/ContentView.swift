//
//  ContentView.swift
//  Strawberry
//
//  Created by Majka on 02/06/2023.
//

import SwiftUI

struct ContentView: View {
    
//    init() {
//        UIScrollView.appearance().bounces = false
//    }
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            //            Color("CustomPink")
            //                .ignoresSafeArea()
            
            ScrollView(showsIndicators: false) {
                StrawberryHeaderView()
                
                VStack(spacing: 0) {
                    NutritionView()
                        .padding()
                    
                    FactsTabView()
                    
                    RecipesView()
                        .padding()
                    
                    ExternalWeblinkView()
                    
                    Text("Everything you ever wanted to know about strawberries,")
                        .font(.custom(Constants.customFont, size: 25))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .shadow(radius: 12)
                        .padding()
                } // vstack
            } // scrollview
            .ignoresSafeArea()
        } // zstack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
