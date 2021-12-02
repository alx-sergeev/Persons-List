//
//  Person.swift
//  Persons List
//
//  Created by Сергеев Александр on 02.12.2021.
//

struct Person {
    let name: String
    let lastName: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(lastName)"
    }
}
