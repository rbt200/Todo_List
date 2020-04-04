//
//  Todo.swift
//  Todo_List
//
//  Created by Ivan Ivanov on 04.04.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import Foundation

struct Todo: Identifiable {
    let id = UUID()
    var title = ""
    var description = ""
}
