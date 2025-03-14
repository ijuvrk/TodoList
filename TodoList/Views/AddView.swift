//
//  AddView.swift
//  TodoList
//
//  Created by Ijaz Ahmad on 14/03/25.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something to add...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 50)
                    .background(Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)))
                    .clipShape(.rect(cornerRadius: 10))
                
                Button {
                    
                } label: {
                    Text("Save".uppercased())
                        .foregroundStyle(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color(#colorLiteral(red: 0.007843137255, green: 0.1882352941, blue: 0.2784313725, alpha: 1)))
                        .clipShape(.rect(cornerRadius: 10))
                }
            }
            .padding(14)
        }
        .navigationTitle("Add an Item 🖊️")
    }
}

#Preview {
    NavigationView {
        AddView()
    }
}
