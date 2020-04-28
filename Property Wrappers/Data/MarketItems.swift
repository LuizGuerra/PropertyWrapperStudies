//
//  MarketItems.swift
//  Property Wrappers
//
//  Created by Luiz Pedro Franciscatto Guerra on 28/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import Foundation
import Combine

class MarketItems: ObservableObject {
    @Published var items: [String] = [
        "Milk",
        "Eggs",
        "Flour",
        "Orange Juice",
        "Toilet Paper",
        "Beer"
    ]
}
