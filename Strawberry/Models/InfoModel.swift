//
//  InfoModel.swift
//  Strawberry
//
//  Created by Majka on 04/06/2023.
//

import Foundation

struct Info: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var isLink: Bool
}
