//
//  ContentView.swift
//  Strawberry
//
//  Created by Majka on 02/06/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isTop: Bool = false
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.top)
            
            
            ScrollViewReader { proxy in
                ScrollView(showsIndicators: false) {
                    StrawberryHeaderView()
                        .id(1)
                    
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
                    .onChange(of: isTop) { newValue in
                        withAnimation(.spring()) {
                            proxy.scrollTo(1)
                        }
                    }
                } // scrollview reader
                
            } // scrollview
            .edgesIgnoringSafeArea(.top)
        } // zstack
        .overlay(alignment: .bottomTrailing) {
            Button {
                isTop.toggle()
            } label: {
                Image(systemName: "chevron.up")
                    .foregroundColor(.white)
                    .padding(25)
                    .background(Circle().fill(Color("CustomPink").opacity(0.7)))
                    .shadow(radius: 12)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
