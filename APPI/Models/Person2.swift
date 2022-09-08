//
//  Person.swift
//  APPI
//
//  Created by Pavel Krigin on 6.9.22..
//

import Foundation

struct Person2 {
    
    let name: String
    let surname: String
    let email: String
    let telegramm: String
    let gitAccount: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    var rows: [String] {
        [email, telegramm, gitAccount]
    }
}

extension Person2 {
    static func getContactList() -> [Person2] {
        var persons: [Person2] = []
        
        let names = DataStore.shared.names
        let surnames = DataStore.shared.surnames
        let emails = DataStore.shared.emails
        let telegramms = DataStore.shared.telegramms
        let gitAccounts = DataStore.shared.gitAccounts
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            telegramms.count,
            gitAccounts.count
        )
        for index in 0..<iterationCount {
            let person = Person2(name: names[index], surname: surnames[index],  email: emails[index], telegramm: telegramms[index], gitAccount: gitAccounts[index]
            )
            persons.append(person)
        }
        return persons
    }
}
enum Contacts: String {
    case email = "envelope.circle.fill"
    case telegramm = "bubble.left.fill"
    case gitAccount = "pawprint.fill"
}
