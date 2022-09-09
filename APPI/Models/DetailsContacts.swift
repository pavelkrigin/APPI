//
//  DetailsContacts.swift
//  APPI
//
//  Created by mac on 9/9/22.
//

import Foundation

struct Details {
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

extension Details {
    static func getContactList() -> [Details] {
            var persons: [Details] = []
            
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
                let person = Details(name: names[index], surname: surnames[index],  email: emails[index], telegramm: telegramms[index], gitAccount: gitAccounts[index]
                )
                persons.append(person)
            }
            return persons
        }
}
enum Contacts: String {
    case email = "envelope.circle.fill"
    case telegramm = "bubble.left.fill"
    case gitAccount = "pawprint.circle.fill"
}
