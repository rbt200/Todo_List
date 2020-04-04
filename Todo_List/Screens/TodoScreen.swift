//
//  TodoScreen.swift
//  Todo_List
//
//  Created by Ivan Ivanov on 04.04.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import SwiftUI

struct TodoScreen: View {
    var todos: [Todo] = []
    @State private var nextTodo: Todo = Todo()
    var body: some View {
        NavigationView {
            VStack {
                List(todos) { todo in
                    TodoRow(todo: todo)
                }
                Form {
                    TextField("Enter title", text: $nextTodo.title)
                    TextField("Enter description", text: $nextTodo.description)
                    Button(action:{}, label: {Text("ADD")})
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
        TodoScreen(todos: [
        Todo(title: "First Todo", description:  "This is the first todo task."),
        Todo(title: "Second Todo", description:  "This is the second todo task.")
        ])
    }
}
