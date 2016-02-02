//: Playground - noun: a place where people can play

import UIKit

// MARK: Arrays

let planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]

// Reduce into a single string.

let string = planets.reduce("") { (string, result) -> String in
    return "\(string) \(result)"
}

string

// Filter array for Earth.

let earthArray = planets.filter { (string) -> Bool in
    return string == "Earth"
}

earthArray

// Map array.

let upperCaseNames = planets.map { (element) -> String in
    return element.uppercaseString
}

upperCaseNames


// MARK: Dictionaries

let scoresDictionary = ["Peter" : 97, "Westen" : 100, "Martin" : 100]

let scores = scoresDictionary.reduce(0) { (score, combine: (personName: String, personScore: Int)) -> Int in
    return score + combine.personScore
}

let westenDictionary = scoresDictionary.filter { (name, score) -> Bool in
    return name == "Westen"
}

westenDictionary