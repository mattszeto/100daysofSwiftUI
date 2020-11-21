import UIKit

var str = "Hello, playground"
// structs properties and methods

// structs are to define your own types (kinda like an object)
struct Sport {
    // properties
    var name: String
    var isOlympicSport: Bool

    //computed properties
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an olympic sport"
        } else {
            return "\(name) is not an olympic sport"
        }
    }
}

let chessBoxing = Sport(name: "ChessBoxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)


// property observers
struct Progress {
    var task: String
    var amount: Int  {
        didSet { // didSet is a property observer
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task:"Loading data", amount: 0)
progress.amount = 30
progress.amount = 50

// methods

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 20)
london.collectTaxes()

struct Person {
    var name: String
    
    // mutating method allows you to change properties within structs
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
    init(name: String) {
        print("\(name) was born")
        self.name = name
    }
}

var person = Person(name: "ed")
person.makeAnonymous()

// methods for swift types

let string = "Do or do not, there is no try"
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())

var arr = ["woody"]
print(arr.count)
arr.append("Buzz")
arr.firstIndex(of: "Buzz")

arr.remove(at: 0)

