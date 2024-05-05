//
//  ContactsView.swift
//  ContactListSwiftUI
//
//  Created by Дарья Кобелева on 03.05.2024.
//

import SwiftUI

struct ContactsView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                PersonRowView(person: person)
            }
            .listStyle(.plain)
            .navigationTitle("Contacts List")
        }
    }
}

#Preview {
    ContactsView(persons: Person.getContactList())
}
