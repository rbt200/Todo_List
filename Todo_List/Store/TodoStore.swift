//
//  TodoStore.swift
//  Todo_List
//
//  Created by Ivan Ivanov on 05.04.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import Combine

class TodoStore: ObservableObject { //add the protocol
    
    //create the sender
    var objectWillChange = ObservableObjectPublisher()

    var todos: [Todo] = [] {
        //any time the object is about to be changed
        //the notification will be sent to listeners
        //and send a new data to it
        willSet {
            objectWillChange.send()
        }
    }
    
    //initializer
    init() {
        fetchTodos()
    }
    
    func fetchTodos() {
        //URLSession and download todos from a server
        todos = [
        Todo(title: "Get egg", description: "Get the dang eggs"),
        Todo(title: "Get sunflower oil", description: "Get a bottle of suflower oil for cooking."),
        Todo(title: "Switch on the stow", description: "Swith the stow an pu the frying pan on it."),
        Todo(title: "Crack the eggs", description: "Crack the eggs into the frying pan."),
        ]
    }
}
