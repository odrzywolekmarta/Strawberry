//
//  TitleView.swift
//  Strawberry
//
//  Created by Majka on 03/06/2023.
//

import SwiftUI

struct TitleView: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.custom(Constants.customFont, size: 40))
            .foregroundColor(.white)
            .padding(.bottom, 0)
            .shadow(radius: 12)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Strawberry")
    }
}
