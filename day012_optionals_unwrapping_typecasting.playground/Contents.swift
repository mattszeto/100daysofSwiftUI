import UIKit

// optionals
// handling missing data

var age: Int? = nil
age = 38

// unwrapping
var name: String? = nil
// if name holds a string, it will be put into upwrapped as a regular String and we can read count,
// if not, then the else code will run
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

// guard let will allow your unwrapped optional to remain usable.
// lets you deal with problems at the start your function, then exit immediately, so the code outside will only run when everything is correct, hence the "guard"
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    
    print("Hello, \(unwrapped)!")
}

// force unwrapping: if you are sure that the value will not be nil
let str = "5"
let num = Int(str)!

// implicitly unwrapped optionals: behaves like unwrapped optionals but without having to write if let or guard let. (if using before its defined then it will crash, but good to use if you know it will be defined before you use it.
let a: Int! = nil

// regular optionals are usually better than implicitly unwrapped optionals...

func username(id: Int) -> String? {
    if id == 1 {
        return "Matt"
    } else {
        return nil
    }
}
// ?? allows the func to set a default if the return value ends up being nil
let u = username(id: 15) ?? "Anon"

let names = ["j","k","l"]
// optional chaining, if first is not found, it will not run uppercase() and will set beatle to nil
let beatle = names.first?.uppercased()

// try optional
// instead of doing do try catch you can do try optionals -> try?
// also you can do try! if you want to force it.

// failable initializers
// init?(id: String){ ...

class Animal {}
class Fish: Animal {}
class Cat: Animal {
    func makeNoise() {
        print("Meow!")
    }
}
// typecasting
let pets = [Fish(), Cat(), Fish(), Cat()]

// as? returns an optional: nil if typecast fails (not Cat), or a converted type otherwise
for pet in pets {
    if let cat = pet as? Cat {
        cat.makeNoise()
    }
}
