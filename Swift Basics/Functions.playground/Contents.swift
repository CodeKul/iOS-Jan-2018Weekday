//: Playground - noun: a place where people can play

import UIKit


func functioName() {
    print("Codekul")
}

functioName()

func functionWith(param1 a : Int,param2 b : Double) {
    print("Value of a: \(a)\nValue b: \(b)")
}

functionWith(param1: 20, param2: 30.99)

func functionWithRef(a : inout Int ) {
        a = 70
}

var c = 10
functionWithRef(a: &c)
print(c)

func functionWithReturningValue() -> String {
    
    var str = "Codekul; The Gurukul For Coders!"
    
    return str
}

var s = functionWithReturningValue()
print(s)


