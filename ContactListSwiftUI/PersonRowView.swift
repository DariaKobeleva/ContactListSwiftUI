//
//  PersonRowView.swift
//  PersonRowViewSwiftUI
//
//  Created by Дарья Кобелева on 03.05.2024.
//

import SwiftUI

struct PersonRowView: View {
    let person: Person
    
    var body: some View {
        NavigationLink(destination: ContactDetailsView(person: person)){
            HStack {
                Text("\(person.fullName)")
                    .foregroundColor(.black)
                    .frame(alignment: .leading)
                Spacer()
            }
        }
    }
}

#Preview {
    PersonRowView(person: Person(name: "Olya", surname: "Pokrov", phoneNumber: "0000", email: "111@mail.ru"))
}
