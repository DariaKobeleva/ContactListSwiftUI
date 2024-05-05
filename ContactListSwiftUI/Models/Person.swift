//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Дарья Кобелева on 03.05.2024.
//

import Foundation

struct Person: Identifiable {
    var id: UUID = UUID()
    
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    var rows: [String] {
        [phoneNumber, email]
    }
    
    static func getContactList() -> [Person] {
        var contactsList: [Person] = []
        let dataStore = DataStore.shared
        
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let emails = dataStore.emails.shuffled()
        let phoneNumbers = dataStore.phoneNumbers.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phoneNumbers.count
        )
        
        for index in 0..<iterationCount {
            let contact = Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            contactsList.append(contact)
        }
        return contactsList
    }
    
    static func getRandomPerson() -> Person {
        let dataStore = DataStore.shared
        let person = Person(
            name: dataStore.names.randomElement() ?? "",
            surname: dataStore.surnames.randomElement() ?? "",
            phoneNumber: dataStore.phoneNumbers.randomElement() ?? "",
            email: dataStore.emails.randomElement() ?? ""
        )
        return person
    }
}
