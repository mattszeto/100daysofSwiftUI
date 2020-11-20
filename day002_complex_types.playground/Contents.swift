import UIKit

var str = "Hello, playground"
// complex types 
// arrays
let john = "john lennon"
let paul = "paul mccartney"

let beatles = [john, paul]

print(beatles[1])


// sets
// all items must be unique
// no order

let colors = Set(["red","green", "blue"])

// tuples
var name = (first: "matt", last: "szeto")
name.0
name.last

// dictionaries
let scores = [
    "Matt": 2.2,
    "Bob": 3.2
]

scores["Matt"]

scores["Mad", default: 0.0]

// empty collections (initializing a dictionary)
var teams = [String: String]()

teams["Paul"] = "Read"

// intializing arrays
var results = [Int]()

// initializing sets
var words = Set<String>()
var numbers = Set<Int>()

// enumerations (enums)

let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}
// stops from accidently using different strings
let result4 = Result.failure

// enum associated values
enum Activity {
    case bored
    case running(destination: String)
    case singing(volume: Int)
    case talking(topic: String)
}

let talking = Activity.talking(topic: "games")

// enum raw values
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

// let earth = Planet(rawValue: 2)


