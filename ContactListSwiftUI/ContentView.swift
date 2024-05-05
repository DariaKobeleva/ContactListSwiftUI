//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Дарья Кобелева on 03.05.2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            ContactsView(persons: Person.getContactList())
                .tabItem {
                    Image(systemName: "person.2.fill")
                        Text("Contacts")
                }
            NumbersView()
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    
    }
}

#Preview {
    ContentView()
}
