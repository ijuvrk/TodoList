//
//  ItemModel.swift
//  TodoList
//
//  Created by Ijaz Ahmad on 14/03/25.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
