import UIKit

var str = "Hello, playground"

// protocols: a way of telling what properties and methods something must have.
// then you tell which types use these protocols: adopting or conforming to a protocol
protocol Indentifiable {
    var id: String { get set }
}


struct User: Identifiable {
    var id: String
}

func displayID(thing: User) {
    print("My ID is \(thing.id)")
}

// protocol inheritance
protocol Payable {
    func calculateWages() -> Int
}

protocol HasVacation {
    func takeVacation(days: Int)
}
protocol NeedsTraining {
    func study()
}

protocol Employee: Payable, NeedsTraining, HasVacation {}

// extensions: allow you to add methods to existing types, making  you do things they weren't originally designed to do.
extension Int {
    func squared() -> Int {
        return self * self
    }
    // cannot add stored properties in extensions, must be computed properties
    var isEven: Bool {
        return self % 2 == 0
    }
}
let number = 9
number.squared()

// protocol extensions
// array and set conform to a protocol called Collection
let pythons = ["hey", "there"]
let ps = ["hey", "there"]

extension Collection {
    func summarize() {
        print("There are \(count) of us:")
        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
ps.summarize()

// protocol-oriented programming: protocols and protocol extensions
// protocol extensions can provid default implementation for our own protocol methods making it easier to conform to a protocol.

protocol Id {
    var id: String { get set }
    func identify()
}

extension Id {
    func identify() {
        print("id: \(id)")
    }
}

struct U: Id {
    var id: String
}

let ts = U(id: "123")
ts.identify()
