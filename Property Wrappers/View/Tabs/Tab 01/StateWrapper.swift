//
//  StateWrapper.swift
//  Property Wrappers
//
//  Created by Luiz Pedro Franciscatto Guerra on 25/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct StateWrapper: View {
    
    @State private var todoRecipe = "Veggie Burguer"
    
    var body: some View {
        NavigationView {
            ZStack (alignment: .top) {
                ApplicationColors.background
                ScrollView(.vertical) {
                    VStack {
                        Text(todoRecipe)
                            .font(.largeTitle)
                            .frame(width: UIScreen.main.bounds.width*0.8, alignment: .leading)
                            .padding(.top, 32)
                            .padding(.horizontal, 20)
                        Image(todoRecipe)
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width*0.8,
                                   height:  UIScreen.main.bounds.width*0.8)
                            .cornerRadius(8)
                            .shadow(radius: 8)
                            .padding(.top, 8)
                        Button(action: { self.defineNewRecipe() },
                               label: {
                                VStack {
                                    Image("chef hat")
                                        .resizable()
                                        .frame(width: 27, height: 27)
                                        .padding(.top, 8)
                                    Text("Find new Recipe!").padding([.horizontal, .bottom], 8)
                                }
                                .background(Color.white)
                                .cornerRadius(8)
                                .padding(.vertical, 32)
                                .shadow(radius: 8)
                                
                        })
                        
                    }
                }
                
            }.navigationBarTitle(Text("@State"))
            
        }
        
        
    }
    
    func defineNewRecipe () {
        todoRecipe = getRandomRecipe()
    }
    
}

struct StateWrapper_Previews: PreviewProvider {
    static var previews: some View {
        StateWrapper()
    }
}

/*
 NavigationView {
 VStack {
 Text(todoRecipe)
 .padding()
 //                Spacer()
 Button(action: { self.defineNewRecipe() },
 label: {
 Text("random text")
 .padding()
 })
 .background(darkGray)
 .foregroundColor(Color.white)
 
 }
 }
 
 */
