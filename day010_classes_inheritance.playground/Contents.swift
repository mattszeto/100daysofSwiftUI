import UIKit

var str = "Hello, playground"

// classes

// difference from structs
// 1. classes never come with a memberwise initializer, you must always create your own initializer


class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("woof")
    }
}

let poppy = Dog(name: "milo", breed: "shih tzu")
// 2. Inheritance
class Poodle: Dog {
    init(name: String) {
        // always required to init()
        super.init(name: name, breed: "Poodle")
    }
    // override functions
    override func makeNoise() {
        print("Yip!")
    }
}

// final classes : no other class can inherit from it, can't override

final class Pet {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

// copying objects

class Singer {
    var name = "Frank Ocean"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"

// 3. this is not possible with structs because you cannot copy structs


// 4. deinitializers: code that gets run when an instance of a class is destroyed
class Person {
    var name = "John"
    
    init() {
        print("\(name) is alive!")
    }
    
    func printGreeting() {
        print("hello, i'm \(name)")
    }
    
    deinit {
        print("\(name) is deleted")
    }
}

// 5. mutability: you can change any property on a class even when the class is created as a constant



