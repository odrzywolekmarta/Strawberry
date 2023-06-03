//
//  InfoData.swift
//  Strawberry
//
//  Created by Majka on 04/06/2023.
//

import Foundation
import OrderedCollections

//let infoData: OrderedDictionary = ["Product" : "Strawberry",
//                                   "Developer" : "Marta",
//                                   "Designer" : "Marta",
//                                   "Website" : "https://github.com/odrzywolekmarta",
//                                   "Recipes" :"https://www.taste.com.au/",
//                                   "Version" : "1.0.0"]

let infoData = [
Info(title: "Product", description: "Strawberry", isLink: false),
Info(title: "Developer", description: "Marta", isLink: false),
Info(title: "Designer", description: "Marta", isLink: false),
Info(title: "Website", description: "https://github.com/odrzywolekmarta", isLink: true),
Info(title: "Recipes", description: "https://www.taste.com.au/", isLink: true),
Info(title: "Version", description: "1.0.0", isLink: false)
]
