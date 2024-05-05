//
//  ContactDetailsView.swift
//  ContactListSwiftUI
//
//  Created by Дарья Кобелева on 03.05.2024.
//

import SwiftUI

struct ContactDetailsView: View {
    @Environment(\.dismiss) private var dismiss
    let contact: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 120, height: 120)
                Spacer()
            }
            //Не понимаю, почему под изображениями нет разделительной линии (
            Label("\(contact.phoneNumber)", systemImage: "phone")
            Label("\(contact.email)", systemImage: "tray")
        }
        .navigationBarTitle("\(contact.fullName)")
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button(action: {
                    dismiss()
                }) {
                    //Пробовала сделать через label, но в таком случае не отображается текст
                    HStack {
                        Image(systemName: "chevron.backward")
                        Text("Back")
                    }
                }
            }
        }
        
    }
}

#Preview {
    ContactDetailsView(contact: Person.getRandomPerson())
}
