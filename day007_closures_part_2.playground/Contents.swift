import UIKit

var str = "Hello, playground"
// closures part 2

func travel(action: (String) -> Void){
    print("i'm getting ready to go")
    action("London")
    print("i've arrived!")
}

travel { (place: String) in
    print("i'm going to \(place) in my car")
}

// using closures as parameters when they return values
func travelers(action: (String) -> String) {
    let description = action("London")
}

travelers{ (place: String) -> String in
    return "I'm going to \(place)"
}

// shorthand parameter names
// swift will automatically know it will take a string and return a string
// rather than 'place in' we can use automatic names for closure's parameters
// starts with $ and counts from 0
travelers{
    "I'm going to \($0) in my car"
}

// mulitple parameters
func multi(action: (String, Int) -> String) {
    let description = action("London", 60)
    print(description)
}

multi {
    "Place: \($0) MPH: \($1)"
}

// return closures from function
// uses -> twice:
// 1st to specify function return value
// 2nd to specify closure's return value
func nice() -> (String) -> Void {
    return {
        print("i'm going to \($0)")
    }
}
// call nice() to get back the closure, then call it as a function
let result = nice()
result("Nice")

// capturing values
// closure capturing happens if we create values in travel() that get used inside of the closure.
// ex. tracking how many times the returned closure is called
func tracker() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let res = tracker()
res("London") // counter 1
res("London") // counter 2

