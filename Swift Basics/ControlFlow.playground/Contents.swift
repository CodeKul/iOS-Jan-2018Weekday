//: Playground - noun: a place where people can play

import UIKit

var a = 20
var b = 20

if a < b {
    print("\(b) is greater than \(a)")
}
else if a == b {
    if a < 30 {
        print("\(a) is less than 30")
    }
    print("\(a) and \(b) are equal")
}
else {
    print("\(a) is greater than \(b)")
}

var c : Int?
c = 30

if let d = c {
    print("found value: \(d)")
}
else {
    print("found nil value")
}

//Loops

a = 11
while a < 10 {

    if a % 2 == 0 {
        print("Codekul")
    }
    else {
        print("The Gurukul for Coders!")
    }
    a += 1
}

a = 11
repeat {

    print("Codekul")

    a += 1
} while a < 10

var tuple = (1,2,3,4,5,"a","b","c")

print(tuple.5)

var range = 5...10

for r in range.reversed() {
    
    print("\(r)")
}


