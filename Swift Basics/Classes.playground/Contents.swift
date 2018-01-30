//: Playground - noun: a place where people can play

import UIKit

class MyClass {
    
    var myVar1 : Int
    var myVar2 : Double
    
    init() {
        myVar1 = 0
        myVar2 = 0.0
    }
    
    init(myVar1 : Int, myVar2 : Double) {
        self.myVar1 = myVar1
        self.myVar2 = myVar2
    }
    
    init(obj : MyClass) {
        
        self.myVar1 = obj.myVar1
        self.myVar2 = obj.myVar2
    }
    
    func display() {
        print("Value : \(myVar1)")
    }
}


var myObj = MyClass()
myObj.myVar1 = 10

var anotherObj = MyClass(obj: myObj)
anotherObj.myVar1

myObj.display()

var newObj = MyClass(myVar1: 10, myVar2: 30.99)
newObj.display()

