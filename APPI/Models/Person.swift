//
//  Person.swift
//  APPI
//
//  Created by Pavel Krigin on 6.9.22..
//

import Foundation

struct Person {
    
    let fullName: String
    //let surname: String
    let email: String
    let telegramm: String
    let gitAccount: String
    
    var rows: [String] {
        [email, telegramm, gitAccount]
    }
}

extension Person {
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        
        let fullNames = DataStore.shared.fullNames
        let emails = DataStore.shared.emails
        let telegramms = DataStore.shared.telegramms
        let gitAccounts = DataStore.shared.gitAccounts
        
        let iterationCount = min(
            fullNames.count,
            emails.count,
            telegramms.count,
            gitAccounts.count
        )
        for index in 0..<iterationCount {
            let person = Person(fullName: fullNames[index], email: emails[index], telegramm: telegramms[index], gitAccount: gitAccounts[index]
            )
            persons.append(person)
        }
        return persons
    }
}
enum Contacts: String {
    case email = "email"
    case telegramm = "telegramm"
    case gitAccount = "gitHub"
}
