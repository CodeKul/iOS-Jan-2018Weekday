//: Playground - noun: a place where people can play

import UIKit

class A {
    
    var a : Int
    
    init() {
        a = 0
    }
    
    init(a : Int) {
        self.a = a
    }
    
    init(obj : A) {
        
        self.a = obj.a
    }
    
    func display()  {
        
        print("Value: \(a)")
    }
}

class B : A {
    
}

class BA : B {
    
    var b : Int
    
    override init() {
        b = 0
        super.init()
    }
    
    override func display() {

        print("Value a: \(a)\nValue b: \(b)")
    }
}

var objBA = BA()
objBA.a = 10
objBA.b = 20

objBA.b = objBA.a

objBA.display()

var obj1 : A
obj1 = BA()
obj1.a = 40
obj1.display()





