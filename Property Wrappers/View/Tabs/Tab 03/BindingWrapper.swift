//
//  BindingWrapper.swift
//  Property Wrappers
//
//  Created by Luiz Pedro Franciscatto Guerra on 27/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct BindingWrapper: View {
    
    @State var isPlaying: Bool = false
    
    var body: some View {
        CustomButton(isPlaying: $isPlaying)
    }
    
}

struct CustomButton : View {
    
    @Binding var isPlaying: Bool
    
    var body: some View {
        Button(
            action: {
                self.isPlaying.toggle()
            },
            label: {
                Image(isPlaying ? ApplicationButtons.pauseButton : ApplicationButtons.playButton)
            })
    }
    
}



struct BindingWrapper_Previews: PreviewProvider {
    static var previews: some View {
        BindingWrapper()
    }
}
