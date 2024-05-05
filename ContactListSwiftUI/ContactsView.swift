//
//  ContactsView.swift
//  ContactListSwiftUI
//
//  Created by Дарья Кобелева on 03.05.2024.
//

import SwiftUI

struct ContactsView: View {
    let contactsList: [Person]
    
    var body: some View {
        NavigationView {
            List(contactsList) { person in
                PersonRowView(contact: person)
            }
            .listStyle(.plain)
            .navigationTitle("Contacts List")
        }
    }
}

#Preview {
    ContactsView(contactsList: Person.getContactList())
}
