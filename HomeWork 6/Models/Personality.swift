//
//  Personality.swift
//  HomeWork 6
//
//  Created by John Doe on 06/07/2022.
//

import QuartzCore

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "Sergey",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let lastname: String
    let occupation: String
    let familyStatus: Family
    let children: Int
    let homeAnimals: Animal
    let sport: String
    let job: Company
    let photo: String
    
    var fullName: String {
        "\(name) \(lastname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Sergey",
            lastname: "Tiselsky",
            occupation: "Pilot,flight instructor",
            familyStatus: .married,
            children: 1,
            homeAnimals: .cat,
            sport: "Tennis, Shooting",
            job: Company.getCompany(),
            photo: "ST"
        )
    }
}
struct Company {
    let title: String
    let jobTitle: JobTitle
    let department: Department
    
    static func getCompany() -> Company {
        Company(
            title: "Union Aviation",
            jobTitle: .pilot,
            department: .FlyOps
            )
    }
}

enum JobTitle: String {
    case pilot = "Pilot"
    case FI = "Flight instructor"
}
enum Department: String {
    case FlyOps = "Flight operation"
    case Handling = "Handling on ground"
}
enum Family: String {
    case married = "married"
    case divorsed = "divorsed"
    case single = "single"
}

enum Animal: String {
    case cat = "cat"
    case dog = "dog"
    case puma = "пума"
}

