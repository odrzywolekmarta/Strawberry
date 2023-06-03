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
                .ignoresSafeArea()

            ScrollView(showsIndicators: false) {
                
                
                VStack(spacing: 0) {
                    Text(Constants.strawberries)
                        .font(.custom(Constants.customFont, size: 40))
                        .foregroundColor(.white)
                        .padding(.bottom, 0)
                        .shadow(radius: 12)
                    Image("bowl")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(40)
                        .shadow(radius: 12)
                        .padding()
                    
                    NutritionView()
                        .padding()
                    FactsTabView()
                    
                    
                    Spacer()
                    
                }
            } // vstack
        } // zstack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
