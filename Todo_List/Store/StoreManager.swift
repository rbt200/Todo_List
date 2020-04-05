//
//  StoreManager.swift
//  Todo_List
//
//  Created by Ivan Ivanov on 05.04.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import Foundation

//// singleton
//class StoreManager {
//    static let instance = StoreManager()
//}

class StoreManager {
    static let instance = StoreManager()
    
    var todoStore = TodoStore()
    var userStore = UserStore()
}
