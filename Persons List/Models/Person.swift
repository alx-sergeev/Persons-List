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

extension Person {
    static func getContactsList() -> [Person] {
        var persons: [Person] = []
        
        for i in 0..<DataManager.arName.count {
            persons.append(
                Person(name: DataManager.arName[i], lastName: DataManager.arLastName[i], phone: DataManager.arPhone[i], email: DataManager.arEmail[i])
            )
        }
        
        return persons
    }
}
