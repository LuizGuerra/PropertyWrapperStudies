//
//  Binding.swift
//  Property Wrappers
//
//  Created by Luiz Pedro Franciscatto Guerra on 27/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import Combine
import SwiftUI

class Recipe: ObservableObject {
    var didChange = PassthroughSubject <Void, Never> ()
    
    var name = "Black Bean Veggie Burguer" { didSet { didChange.send() } }
    var imageName = "Black Bean Veggie Burguer" { didSet { didChange.send() } }
}

struct BindingWrapper: View {
    
    @ObservedObject var recipe = Recipe()
    
    var body: some View {
        NavigationView {
            VStack {
                Text(recipe.name)
                NavigationLink(
                    destination: Image(recipe.imageName),
                    label: {
                        Text("Show this recipe image")
                    }
                )
            }
        }.navigationBarTitle(Text("Binding"))
        
    }
}

struct Binding_Previews: PreviewProvider {
    static var previews: some View {
        BindingWrapper()
    }
}
