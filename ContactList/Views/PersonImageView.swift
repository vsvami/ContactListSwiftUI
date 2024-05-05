//
//  PersonImageView.swift
//  ContactList
//
//  Created by Vladimir Dmitriev on 05.05.24.
//

import SwiftUI

struct PersonImageView: View {
    var body: some View {
        HStack(alignment: .center) {
            Spacer()
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .padding()
            Spacer()
        }
    }
}

#Preview {
    PersonImageView()
}
