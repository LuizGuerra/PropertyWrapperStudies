//
//  ContentView.swift
//  Property Wrappers
//
//  Created by Luiz Pedro Franciscatto Guerra on 25/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            StateWrapper()
                .tabItem {
                    VStack {
                        Image("second")
                        Text("State")
                    }
                }
                .tag(0)
            ObservedObjectWrapper()
                .tabItem {
                    VStack {
                        Image("second")
                        Text("ObservedObject")
                    }
                }
                .tag(1)
            BindingWrapper()
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Binding")
                    }}
                .tag(2)
            EnvironmentObjectWrapper()
                .environmentObject(User())
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Environment")
                    }}
                .tag(3)
            PublishedWrapper(marketItems: MarketItems())
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Environment")
                    }}
                .tag(4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
