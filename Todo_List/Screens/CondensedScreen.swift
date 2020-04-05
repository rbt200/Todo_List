//
//  CondensedScreen.swift
//  Todo_List
//
//  Created by Ivan Ivanov on 05.04.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import SwiftUI

struct CondensedScreen: View {
    
    //var todos: [Todo] = []
    // listener singleton
    @ObservedObject var todoStore = StoreManager.instance.todoStore
    
    var body: some View {
        List(todoStore.todos) { todo in
            Text(todo.title)
        }
    }
}

struct CondensedScreen_Previews: PreviewProvider {
    static var previews: some View {
        CondensedScreen()
    }
}
