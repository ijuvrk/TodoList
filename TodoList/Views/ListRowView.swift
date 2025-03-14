//
//  ListRowView.swift
//  TodoList
//
//  Created by Ijaz Ahmad on 13/03/25.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle.fill" : "circle")
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

#Preview() {
    let item1 = ItemModel(title: "First Item!", isCompleted: false)
    ListRowView(item: item1)
    let item2 = ItemModel(title: "Second", isCompleted: true)
    ListRowView(item: item2)
}
