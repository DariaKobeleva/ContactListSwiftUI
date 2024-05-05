//
//  NumbersView.swift
//  ContactListSwiftUI
//
//  Created by Дарья Кобелева on 03.05.2024.
//

import SwiftUI

struct NumbersView: View {
    let contactsList: [Person]
    
    var body: some View {
        NavigationStack {
            List(contactsList) { person in
                Section(header: Text("\(person.fullName)")
                    .font(.headline)
                ){
                    Label("\(person.phoneNumber)", systemImage: "phone")
                    Label("\(person.email)", systemImage: "tray")
                }
            }
            .listStyle(.plain)
            .navigationBarTitle("Contacts List")
        }
    }
}

#Preview {
    NumbersView(contactsList: Person.getContactList())
}

