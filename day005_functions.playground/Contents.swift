import UIKit

var str = "Hello, playground"
// functions

func printHelp() {
    let message = """
    Welcome to MyApp!
    
    Run this app inside of directory of images and
    You will be cool!
    """
    print(message)
}
printHelp()

func square(number: Int){
    print(number * number)
}
square(number: 10)

func squareReturn(number: Int) -> Int {
    return number * number
}
let ans = squareReturn(number:20)
print(ans)

// parameter labels
// can set two labels, to is for external use and name is for internal
func sayHello(to name: String){
    print("Hello, \(name)")
}

sayHello(to: "matt")

// ommit parameter labels
func greet(_ person: String){
    print("hello \(person)")
}

greet("Matty")

// default parameters
func greeting(_ person: String, nicely: Bool = true){
    if nicely == true {
        print("hey there \(person)")
    } else {
        print("hi.")
    }
}

greeting("matt",nicely: false)

// variadic functions
// they accept any number of parameters of the same type ex. print()
func nums(numbers: Int...){
    for number in numbers {
        print("number: \(number)")
    }
}

nums(numbers: 1,2,3,4,5,6,7,8)

// throwing functions
// (throws) marking errors
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "obvious"{
        throw PasswordError.obvious
    }
    return true
}
// try catch for throwing errors
do {
    try checkPassword("password")
    print("that password is good!")
} catch {
    print("You cant use that password")
}

// inout parameters
// can be changed inside the function and will reflect the original value outside of the functions
func doubleInPlace(number: inout Int){
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)

print(myNum)
