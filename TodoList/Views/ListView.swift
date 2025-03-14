//
//  ListView.swift
//  TodoList
//
//  Created by Ijaz Ahmad on 13/03/25.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "this is the fist title",
        "second item",
        "third!"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
//        .navigationBarItems(
//            leading: EditButton(),
//            trailing:
//                NavigationLink("Add", destination: Text("Destination")
//                              )
        //        )  // going to be depreciated in future
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink("Add", destination: AddView()) // When we use a NavigationLink inside a view that's already in a NavigationView, the destination view inherits the navigation context (so we it get navigationTitle in the AddView()
            }
        }
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}
