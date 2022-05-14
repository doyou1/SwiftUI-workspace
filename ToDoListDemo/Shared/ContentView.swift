//
//  ContentView.swift
//  Shared
//
//  Created by AIS on 2022/05/12.
//

import SwiftUI

struct ToDoItem: Identifiable {
    var id = UUID()
    var task: String
    var imageName: String
}

struct ContentView: View {
    @State private var toggleStatus = true
    
    var listData: [ToDoItem] = [
        ToDoItem(task: "Take out trash",
            imageName: "trash.circle.fill"
        ),
        ToDoItem(task: "Pick up the kids",
            imageName: "person.2.fill"
        ),
        ToDoItem(task: "Wash the car",
            imageName: "car.fill"
        )
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Settings")) {
                    Toggle(isOn: $toggleStatus) {
                        Text("Allow Notifications")
                    }
                }

                Section(header: Text("To Do Tasks")) {
                    ForEach(listData) { item in
                        NavigationLink(destination: Text(item.task)) {
                            HStack {
                                Image(systemName: item.imageName)
                                Text(item.task)
                            }
                        }
                    }.onDelete(perform: deleteItem)
                        .onMove(perform: moveItem)
                }
            }
            .navigationBarTitle(Text("To Do List"))
            .navigationBarItems(trailing: EditButton())
//            .navigationBarItems(trailing: Button(action: addTask))
        }
    }
    
    func deleteItem(at offsets: IndexSet) {
        // Delete items from data source here
    }
    
    func moveItem(from source: IndexSet, to destination: Int) {
        // Reorder items is source data here
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
