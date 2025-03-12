//
//  TodoListApp.swift
//  TodoList
//
//  Created by Ijaz Ahmad on 13/03/25.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - Manages model for the view
 
 */


@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
        }
    }
}
