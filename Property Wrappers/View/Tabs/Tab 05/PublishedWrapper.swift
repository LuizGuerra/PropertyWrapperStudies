//
//  PublishedWrapper.swift
//  Property Wrappers
//
//  Created by Luiz Pedro Franciscatto Guerra on 28/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct PublishedWrapper: View {
    
    @ObservedObject var marketItems: MarketItems
    @State private var textFieldText = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white
                List {
                    Section(header: Text("Add item to the shopping cart")) {
                        TextField("Item to add", text: $textFieldText)
                        Button("Add Item") {
                            self.marketItems.items.append(self.textFieldText)
                            self.textFieldText = ""
                        }
                    }
                    Section {
                        ForEach (marketItems.items, id: \.self) { item in
                            Text(item)
                        }.onDelete(perform: delete)
                    }
                }
                
                
            }
            .navigationBarTitle(Text("@Published"))
            .listStyle(GroupedListStyle())
        }
        
    }
    
    func delete(at offsets: IndexSet) {
        self.marketItems.items.remove(atOffsets: offsets)
    }
}

struct PublishedWrapper_Previews: PreviewProvider {
    static var previews: some View {
        PublishedWrapper(marketItems: MarketItems())
    }
}
