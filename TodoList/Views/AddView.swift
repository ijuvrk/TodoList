//
//  AddView.swift
//  TodoList
//
//  Created by Ijaz Ahmad on 14/03/25.
//

import SwiftUI

struct AddView: View {
    var body: some View {
        ScrollView {
            Text("hi")
        }
        .navigationTitle("Add an Item")
    }
}

#Preview {
    NavigationView {
        AddView()
    }
}
