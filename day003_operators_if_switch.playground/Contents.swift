import UIKit

var str = "Hello, playground"
// operators

let first = 1
let second = 2

let total = first + second
let product = first * second
let division = first / second

let remainder = 10 % first

// operator overloading w Swift
let meaningOfLife = 42

let doubleMeaning = 42 + 42

let fakers = "fakers gonna"
let action = fakers + "fake"

// compond operators
var score = 95
score -= 5

// comparison operators
score == meaningOfLife
// != <= < > >=

// conditions
let f = 11
let s = 10

if f + s == 21 {
    print("21")
} else if f - s == 10 {
    print("oh..")
} else {
    print("not 21")
}

// combine operators
if f > 10 || s < 10 {
    print("okay")
}// && and ||

// ternary operator
print(f > s ? "f is larger" : "f is smaller")

// switch statements
let weather = "sunny"
switch weather {
case "rain":
    print("bring umbrella")
case "snow":
    print("dont go out")
    fallthrough // so it doesnt break out if it reaches this case
default:
    print("enjoy")
}

// range operators
let ss = 100
switch ss {
case 0..<10:
    print("u suck")
case 50..<100:
    print("not perfect")
default:
    print("...")
}


