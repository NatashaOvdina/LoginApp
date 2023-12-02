//
//  User.swift
//  LoginApp
//
//  Created by Natalia Ovdina on 02.12.2023.
//

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(userName: "User", password: "123", person: Person.getPerson())
    }
}

struct Person {
    let name: String
    let surname: String
    let dateOfBirth: String
    let education: String
    let quote: String
    let biography: String
    
    var fullName: String {
        name + " " + surname
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Natasha",
            surname: "Ovdina",
            dateOfBirth: "05.07.1997",
            education: "LGU & MPGU",
            quote: "Fall down 7 times stand up 8",
            biography: """
            Hi! My name is Natasha Ovdina, I'm from a small town Ukhta, but currently I live in Saint-Petersburg. Because I'm a woman I don't like speaking about my age, so let's skip this detail! I love spending time with my family & friends, traveling and getting new knowledge and skills. I worked as a teacher and a model for some years, however I understood that I didn't like it and I decided to change my field of activity. I hope, that one day I will work as a IOS developer and try to be a part of a foreign company's programmers group! Wish me luck!
            """
        )
    }
}
