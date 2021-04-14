//
//  Person.swift
//  ContactsList
//
//  Created by Никита  on 13.04.2021.
//

struct Person {
    static var data = DataManager()

    let name: String
    let secondName: String
    
    var fullName: String {
        "\(name) \(secondName)"
    }
    let phoneNumber: String
    let email: String
    
    
}

extension Person {
   
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        
        let newNames: [String] = data.names.shuffled()
        let newSecondNames: [String] = data.secondNames.shuffled()
        let newPhoneNumber: [String] = data.phoneNumbers.shuffled()
        let newEmails: [String] = data.emails.shuffled()

        for index in 0..<data.names.count {
            persons.append(Person(name: newNames[index], secondName: newSecondNames[index], phoneNumber: newPhoneNumber[index], email: newEmails[index]))
        }
        return persons
    }

}
