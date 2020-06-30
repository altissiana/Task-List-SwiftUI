//
//  ContentView.swift
//  TaskList
//
//  Created by Tissiana Alves on 6/29/20.
//  Copyright © 2020 Tissiana Alves. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var taskStore: TaskStore
    
    var body: some View {
        NavigationView {
            List(taskStore.tasks) { task in
                Text(task.name)
            }
            .navigationBarTitle("Tasks")
            .navigationBarItems(
                trailing:
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "plus")
                }
            )
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskStore: TaskStore())
    }
}