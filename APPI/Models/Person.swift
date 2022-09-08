//
//  Person.swift
//  APPI
//
//  Created by Pavel Krigin on 6.9.22..
//

import Foundation

struct User {
    let login: String
    let password: String
    
    static func getUserData() -> User {
        User(
            login: "1",
            password: "1"

        )
    }
}

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


