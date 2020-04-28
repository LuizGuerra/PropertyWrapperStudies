//
//  Binding.swift
//  Property Wrappers
//
//  Created by Luiz Pedro Franciscatto Guerra on 27/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import Combine
import SwiftUI

struct ObservedObjectWrapper: View {
    
    @ObservedObject var recipe = Recipe()
    @State var name = "Pick a Recipe first!"
    
    var body: some View {
        NavigationView {
            ZStack {
                ApplicationColors.background
                VStack {
                    Text(recipe.name)
                        .font(.title)
                        .multilineTextAlignment(.leading)
                        .padding(.top, 32)
                        .padding(.horizontal, 16)
                    NavigationLink (destination: BindingRecipe(recipe: recipe)) {
                        Text("See how it is")
                            .foregroundColor(Color.white)
                            .frame(width: 200, height: 35)
                            .background(Color.blue)
                            .cornerRadius(8)
                            .padding(32)
                    }
                }
            }.navigationBarTitle(Text("@ObservedObject"))
        }
    }
    
}

struct ObservedObject_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectWrapper()
    }
}
