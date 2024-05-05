//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Дарья Кобелева on 03.05.2024.
//

import SwiftUI

struct ContentView: View {
    let contactsList: [Person]
    var body: some View {
        TabView {
            ContactsView(contactsList: contactsList)
                .tabItem {
                    Label("Contacts", systemImage: "person.3.fill")
                }
            NumbersView(contactsList: contactsList)
                .tabItem {
                    Label("Numbers", systemImage: "phone.fill")
                }
        }
    }
}

#Preview {
    ContentView(contactsList: Person.getContactList())
}
