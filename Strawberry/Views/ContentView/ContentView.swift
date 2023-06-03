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
                
//                GeometryReader { geometry in
//                    VStack {
//                        if geometry.frame(in: .global).minY <= 0 {
//                            Image("bowl")
//                                .resizable()
//                                .aspectRatio(contentMode: .fill)
//                                .frame(width: geometry.size.width, height: geometry.size.height)
//                                .shadow(radius: 12)
//                                .offset(y: geometry.frame(in: .global).minY/9)
//                                .clipped()
//                        } else {
//                            Image("bowl")
//                                .resizable()
//                                .aspectRatio(contentMode: .fill)
//                                .frame(width: geometry.size.width, height: geometry.size.height + geometry.frame(in: .global).minY)
//                                .shadow(radius: 12)
//                                .clipped()
//                                .offset(y: -geometry.frame(in: .global).minY)
//                        }
//                    }
//                }
                StrawberryHeaderView()
                
                VStack(spacing: 0) {
                    NutritionView()
                        .padding()
                    
                    FactsTabView()
                    
                    RecipesView()
                        .padding()
                    
                    ExternalWeblinkView()
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
