//
//  ContactListView.swift
//  ContactList
//
//  Created by Vladimir Dmitriev on 05.05.24.
//

import SwiftUI

struct ContactListView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                NavigationLink(destination: ContactDetailsView(person: person)) {
                    Text(person.fullName)
                }
            }
            .navigationTitle("Contact List")
            .listStyle(.plain)
        }
    }
}

#Preview {
    ContactListView(persons: Person.getContactList())
}
