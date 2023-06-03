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

            VStack {
                Image("bowl")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(40)
                    .shadow(radius: 12)
                    .padding()
                
                
                FactsTabView()
                
                
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
