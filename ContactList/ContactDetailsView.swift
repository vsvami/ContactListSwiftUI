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
            HStack(alignment: .center) {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                Spacer()
            }
            
            ContactRowView(image: "phone", value: person.phoneNumber)
            ContactRowView(image: "tray", value: person.email)

        }
        .navigationTitle(person.fullName)
        .toolbarTitleDisplayMode(.large)
    }
}

#Preview {
    ContactDetailsView(person: Person.getContactList().first!)
}
