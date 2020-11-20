import UIKit

var str = "Hello, playground"
// loops

// for loops
let count = 1...10

for number in count {
    print("number is \(number)")
}

for _ in 1...5{
    print("hey")
}

// while loops
var number = 1
while number < 10{
    print(number)
    number += 1
}

// repeat loops
repeat {
    print(number)
    number += 1
} while number <= 10

// exiting loops
var countDown = 10

while countDown > 0{
    if countDown == 4 {
        break
    }
    
    countDown -= 1
}

// exit multiple loops
outerloop: for i in 1...10{
    for j in 1...10{
        let product = i * j
        print("\(i) * \(j) = \(product)")
        if product == 50 {
            print("nice")
            break outerloop
        }
    }
}

// skipping iterations
for i in 1...10{
    if i == 4{
        continue
    }
    print(i)
}

