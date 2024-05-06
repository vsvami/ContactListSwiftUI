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
            List(persons) { person in
                Section {
                    Label(person.phoneNumber, systemImage: "phone")
                    Label(person.email, systemImage: "tray")
                } header: {
                    Text(person.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    NumberListView(persons: Person.getContactList())
}
