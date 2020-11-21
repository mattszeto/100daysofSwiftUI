import UIKit

var str = "Hello, playground"
// closures are anonymous functions -> where we create and assign directly to a variable , then pass  that variable around as if it were a string or integer

// SwiftUI uses closures A LOT
// some reasons why closures are useful in Swift:
// 1. running some code after a delay
// 2. running code after an animation has finished
// 3. running code when a download has finished
// 4. running code when a user has selected an option from menu

// closures let us wrap up some functionality in a single variable, then store it somewhere

// creating basic closures
let driving = {
    print("Im driving a car")
}
driving()

// parameters
let params = { (place: String) in
    print("I'm going to \(place) in my car")
}

// no paramter labels comapared to functions
params("London")

// return values

let returnValues = { (place: String) -> String in
    return "I'm going to \(place)"
}
let msg = returnValues("Park")
print(msg)

// closures as parameters
// () -> Void means "accepts no paramters and returns Void"
// action is a placeholder for different types of traveling actions we can pass as closures
// action is a closure
func travel(action: () -> Void) {
    print("i'm getting ready to go")
    action()
    print("i have arrived")
}

travel(action: driving)

// trailing closure syntax
// can eliminate parenthesis because there are no other parameters
// common in swift
travel {
    print("i'm driving in my car")
}


