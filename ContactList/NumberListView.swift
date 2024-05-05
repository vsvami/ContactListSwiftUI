//
//  NumberListView.swift
//  ContactList
//
//  Created by Vladimir Dmitriev on 05.05.24.
//

import SwiftUI

struct NumberListView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List{
                Text("Hello, World!")
            }
            .navigationTitle("Numbers")
        }
    }
}

#Preview {
    NumberListView(persons: Person.getContactList())
}
