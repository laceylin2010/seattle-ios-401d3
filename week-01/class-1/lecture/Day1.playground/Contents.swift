//: Playground - noun: a place where people can play

import UIKit

var integer = 100
var decimal = 22.5
// integer = decimal

let string = "16"
let age = Int(string)

let tuple: (description: String, code: Int) = ("Not found", 404)

let numberOne = 12
let numberTwo = 13
let sum = numberOne + numberTwo

let modulo = 28 % 10

var counter = 0
counter++
counter


var start = 9
let prefix = ++start
start

let postfix = start++
start


let michael = "michael"
let same = michael == "michael"

// MARK: Decisions

let pet = "Dog"

switch (pet) {
    case "Cat", "Dog":
    print("Animal is a house pet.")
default:
    print("Animal is not a house pet.")
}

// MARK: Decisions

let count = 10
var aSum = 0
for var i = 1; i<=count; i++ {
    aSum += i
}

// Functions as variables:

func add(numOne: Int, numTwo: Int) -> Int {
    return numOne + numTwo
}

var function: (Int, Int) -> Int = add

// let result = function(10, 15)

func printResult(function: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    let result = function(a, b)
    print(result)
}

printResult(add, 3, 5)


// Closures

var closure: (Int, Int) -> Int
closure = {(a, b) -> Int in
    return a + b
}

let closureResult = closure(5, 4)

// Capturing.

var aCounter = 0
let incrementClosure = {
    aCounter++
}

incrementClosure()
incrementClosure()

