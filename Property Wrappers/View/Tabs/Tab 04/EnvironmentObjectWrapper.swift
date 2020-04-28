    //
    //  EnvironmentObjectWrapper.swift
    //  Property Wrappers
    //
    //  Created by Luiz Pedro Franciscatto Guerra on 27/04/20.
    //  Copyright © 2020 LuizGuerra. All rights reserved.
    //

import SwiftUI

struct EnvironmentObjectWrapper: View {
    
    @EnvironmentObject var userData: User
    @State private var wasCheckedYet = false
    @State private var toggleState = false
    
    var body: some View {
        NavigationView {
            ZStack (alignment: .top) {
                ApplicationColors.background
                VStack {
                    Toggle(isOn: $toggleState, label: {
                        Text("Do you want dark mode??") })
                        .onTapGesture {
                            if self.wasCheckedYet {
                                self.userData.prefersDarkMode = !self.toggleState
                            } else {
                                self.userData.prefersDarkMode = true
                                self.wasCheckedYet = true
                            }
                    }
                    .padding([.horizontal, .top] ,32)
                    NavigationLink(destination: EONextScreen()) {
                        Text("Let's test it!")
                    }
                        .frame(width: 150, height: 45)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .cornerRadius(8)
                        .padding(16)
                    
                }
            }.navigationBarTitle(Text("Environment Object"))
        }
    }
    
}

let userDataPreview = User()
struct EnvironmentObjectWrapper_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectWrapper().environmentObject(userDataPreview)
    }
}
