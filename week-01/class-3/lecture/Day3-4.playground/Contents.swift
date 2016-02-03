//: Playground - noun: a place where people can play

import UIKit

// Show taditional way to iterrate through the array and up case the string...


func capitalize(string: String) -> String {
    return string.uppercaseString
}


let planets = ["Earth", "Mars"]
let scores = ["Michael" : 15]

// MAP

let capitalizedPlanets = planets.map(capitalize)
capitalizedPlanets

let status: (code: Int, description: String) = (404, "Not found.")
let errorDescription = status.description

let answer = (true && 1 != 2) || (4 > 3 && 100 < 1)


let dictionary = [Int : [String]]()
