//: Playground - noun: a place where people can play

import UIKit

class Complex {
    
    var real : Int
    var imag : Int
    
    init() {
        
        real = 0
        imag = 0
    }
    
    init(real: Int, imag: Int) {
        
        self.real = real
        self.imag = imag
    }
    
    init(obj : Complex) {
        self.real = obj.real
        self.imag = obj.imag
    }
    
    func display() {
        
        print("(\(real) + \(imag)i)")
    }
    
    func addition(_ c : Complex) -> Complex {
        
        let res = Complex()
        res.real = c.real + self.real
        res.imag = c.imag + self.imag
        
        return res
    }
    
    func Subtraction(_ c : Complex) -> Complex {
        
        let res = Complex()
        res.real = c.real - real
        res.imag = c.imag - imag
        
        return res

    }
    
    func Multiply(_ c : Complex) -> Complex {
        let res = Complex()
        res.real = (c.real * real) - (c.imag * imag)
        res.imag = c.real * imag + c.imag * real
        
        return res
    }
}

var c1 = Complex(real: 10, imag: 20)

c1.display()

var c2 = Complex(real: 10, imag: 5)

c2.display()

var c3 = c1.addition(c2)

c3.display()

var c4 = c1.Subtraction(c2)
c4.display()


var C5 = c1.Multiply(c2)
C5.display()




