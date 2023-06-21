import UIKit

// ops: add, sub, mult, div
class Calculator {
    
    // addition method
    func add(_ a: Int, _ b: Int) -> Int{
        return a + b
    }
    
    // subtraction method
    func sub(_ a: Int, _ b: Int) -> Int{
        return a - b
    }
    
    // division method
    // formatted as a: numerator and b: denominator
    // if b is 0, return 0 -> not possible
    func div(_ a: Int, _ b: Int) -> Int{
        if(b == 0){
            return 0
        }
        return a / b
    }
    
    // multiplication method
    func mult(_ a: Int, _ b: Int) -> Int{
        return a * b
    }
}

// used for testing purposes
// assuming ints per hw email
var a = 5
var b = 17

var calc = Calculator()

print("Tests 1")
print("Addition: \(calc.add(a, b))")
print("Subtraction: \(calc.sub(b, a))")
print("Division: \(calc.div(b, a))")
print("Multiplication: \(calc.mult(a,b))")

print("----")

print("Tests 2")
print("Subtraction, negative: \(calc.sub(a, b))")
print("Division by zero: \(calc.div(a, b))")
