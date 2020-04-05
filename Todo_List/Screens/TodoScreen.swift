//
//  TodoScreen.swift
//  Todo_List
//
//  Created by Ivan Ivanov on 04.04.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import SwiftUI

struct TodoScreen: View {
    
    //listener
    @ObservedObject var todoStore = TodoStore()
    
    @State private var nextTodo: Todo = Todo()
    
    var body: some View {
        NavigationView {
            VStack {
                List(todoStore.todos) { todo in
                    TodoRow(todo: todo)
                }
                Form {
                    TextField("Enter title", text: $nextTodo.title)
                    TextField("Enter description", text: $nextTodo.description)
                    Button(action:{
                        self.todoStore.todos.append(self.nextTodo)
                        self.nextTodo = Todo()
                    }, label: {Text("ADD")})
                }
            }
            .navigationBarTitle(Text("Todo List"))
        }
    }
}

struct TodoRow: View {
    let todo: Todo
    var body: some View {
        VStack(alignment: .leading){
            Text(todo.title)
                .fontWeight(.bold)
                .font(.headline)
            Text(todo.description)
        }
    }
}

struct TodoScreen_Previews: PreviewProvider {
    static var previews: some View {
        TodoScreen()
    }
}
