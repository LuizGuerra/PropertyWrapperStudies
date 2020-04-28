//
//  EONextScreen.swift
//  Property Wrappers
//
//  Created by Luiz Pedro Franciscatto Guerra on 27/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct EONextScreen: View {
    @EnvironmentObject var userData: User
    var body: some View {
        ZStack {
            (userData.prefersDarkMode ? ApplicationColors.darkGray2 : Color.white).edgesIgnoringSafeArea(.all)
            Text("Hello, \(userData.userName)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(self.userData.prefersDarkMode ? Color.white : Color.black)
                .shadow(radius: 8)
        }
        
    }
}

struct EONextScreen_Previews: PreviewProvider {
    static let userData = User()
    static var previews: some View {
        EONextScreen().environmentObject(userData)
    }
}
