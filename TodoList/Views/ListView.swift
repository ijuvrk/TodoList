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
        .navigationTitle("Todo List 📝")
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}
