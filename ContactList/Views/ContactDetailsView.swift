//
//  ContactDetailsView.swift
//  ContactList
//
//  Created by Vladimir Dmitriev on 05.05.24.
//

import SwiftUI

struct ContactDetailsView: View {
    let person: Person
    
    var body: some View {
        List{
            PersonImageView()
            ContactRowView(image: "phone", value: person.phoneNumber)
            ContactRowView(image: "tray", value: person.email)
        }
        .navigationTitle(person.fullName)
    }
}

#Preview {
    ContactDetailsView(person: Person.getContactList().first!)
}
