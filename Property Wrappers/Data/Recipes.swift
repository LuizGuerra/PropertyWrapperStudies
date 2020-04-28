//
//  Recipes.swift
//  Property Wrappers
//
//  Created by Luiz Pedro Franciscatto Guerra on 26/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import Foundation
import Combine

class Recipe: ObservableObject {
    var didChange = PassthroughSubject <Void, Never> ()
    var name = "Veggie Burguer" { didSet { didChange.send() } }
    var imageName = "Veggie Burguer" { didSet { didChange.send() } }
}

let recipes = [
    "Chicken Pot Pie",
    "Pumpking Bread",
    "Tailgate Chili",
    "Chicken Taco Soup",
    "Quinoa and Black Beans",
    "Buffalo Chicken Dip",
    "Iced Pumpkin Cookies",
    "Veggie Burguer"
]

func getRandomRecipe () -> String {
    return recipes.randomElement() ?? "Veggie Burguer"
}
