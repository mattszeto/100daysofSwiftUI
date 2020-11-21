import UIKit

var str = "Hello, playground"

// initalizers (special methods to create structs
struct User {
    var username: String
    
    init() {
        username = "Anon"
        print("creating new user")
    }
}

var user = User()
user.username = "matt"


// lazy properties will only be created when you access the property at least once

// static properties: allow all instances of struct to share and access the property

struct Student {
    static var classSize = 0
    // access control
    // private on a property will only allow methods inside of struct to access them
    private var id: Int
    var name: String
    
    init(name: String){
        self.name = name
        Student.classSize += 1
    }
}

let ed = Student(name: "ed")

print(Student.classSize)
