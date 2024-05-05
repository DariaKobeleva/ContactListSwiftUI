//
//  PersonRowView.swift
//  PersonRowViewSwiftUI
//
//  Created by Дарья Кобелева on 03.05.2024.
//

import SwiftUI

struct PersonRowView: View {
    let contact: Person
    
    var body: some View {
        NavigationLink(destination: ContactDetailsView(contact: contact)){
            HStack {
                Text("\(contact.fullName)")
                    .foregroundColor(.black)
            }
        }
    }
}

#Preview {
    PersonRowView(contact: Person.getRandomPerson())
}
