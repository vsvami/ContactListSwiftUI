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
            List {
                ForEach(persons, id: \.self) { person in
                    Section {
                        ContactRowView(image: "phone", value: person.phoneNumber)
                        ContactRowView(image: "tray", value: person.email)
                    } header: {
                        Text(person.fullName)
                    }
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
