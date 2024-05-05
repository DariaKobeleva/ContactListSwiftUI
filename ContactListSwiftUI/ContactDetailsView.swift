//
//  ContactDetailsView.swift
//  ContactListSwiftUI
//
//  Created by Дарья Кобелева on 03.05.2024.
//

import SwiftUI

struct ContactDetailsView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 120, height: 120)
                Spacer()
            }
            HStack{
                Image(systemName: "phone")
                Text("\(person.phoneNumber)")
            }
            HStack{
                Image(systemName: "tray")
                Text("\(person.email)")
            }
                .navigationBarTitle("\(person.fullName)")
        
        }
    }
}

#Preview {
    ContactDetailsView(person: Person(name: "Lola", surname: "Polyakova", phoneNumber: "123-456-7890", email: "tiger123@example.com"))
}
