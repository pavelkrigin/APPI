//
//  Person.swift
//  APPI
//
//  Created by Pavel Krigin on 6.9.22..
//

import Foundation

struct Person {
    
    let name: String
    let surname: String
    let email: String
    let telegramm: String
    let gitAccount: String
    
    var fullName: String {
        "\(name) \(surname)" //нужно доработать для корректного отображения
    }
}
extension Person {
    static func getPersonsData() -> [Person] {
        var persons:[Person] = []
        let dataStore = DataStore.shared
        
        for person in 0..<dataStore.names.count {
            persons.append(Person(name: dataStore.names[person],
                                  surname: dataStore.surnames[person],
                                  email: dataStore.emails[person],
                                  telegramm: dataStore.telegramms[person],
                                  gitAccount: dataStore.gitAccounts[person]
                                 )
            )
        }
        
        return persons
    }

}
