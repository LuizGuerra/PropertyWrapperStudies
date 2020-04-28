//
//  Recipe Image.swift
//  Property Wrappers
//
//  Created by Luiz Pedro Franciscatto Guerra on 27/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct BindingRecipe: View {
    @ObservedObject var recipe: Recipe
    var body: some View {
        VStack {
            Text(recipe.name)
                .font(.title)
                .fontWeight(.heavy)
                .frame(width: self.viewWidth())
                
            Image(recipe.imageName)
                .resizable()
                .frame(width: self.viewWidth(), height: self.viewWidth())
                .cornerRadius(16)
                .shadow(radius: 4)
        }
    }
    
    func viewWidth() -> CGFloat {
        return UIScreen.main.bounds.width*0.9
    }
}

struct Recipe_Image_Previews: PreviewProvider {
    static var previews: some View {
        BindingRecipe(recipe: Recipe())
    }
}
