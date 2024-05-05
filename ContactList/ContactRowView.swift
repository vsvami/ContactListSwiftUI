//
//  ContactRowView.swift
//  ContactList
//
//  Created by Vladimir Dmitriev on 05.05.24.
//

import SwiftUI

struct ContactRowView: View {
    let image: String
    let value: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundStyle(.blue)
            Text(value)
        }
    }
}

#Preview {
    ContactRowView(image: "phone", value: "111")
}
