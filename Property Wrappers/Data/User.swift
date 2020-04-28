//
//  UserLogin.swift
//  Property Wrappers
//
//  Created by Luiz Pedro Franciscatto Guerra on 27/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import Foundation
import Combine

class User: ObservableObject {
    var didChange = PassthroughSubject <Void, Never> ()
    
    var userName = "@LuizGuerra" { didSet { didChange.send() } }
    var password = "genericPassword123" { didSet { didChange.send() } }
    var emailAddress = "luizguerra@email.com" { didSet { didChange.send() } }
    
    var prefersDarkMode = false { didSet { didChange.send() } }
}
