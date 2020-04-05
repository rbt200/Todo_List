//
//  ContentView.swift
//  Todo_List
//
//  Created by Ivan Ivanov on 04.04.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            TodoScreen()
                .tabItem {
                    Text("Todos")     
            }
            .tag(0)
            CondensedScreen()
                .tabItem {
                    Text("Condensed")
            }
            .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
