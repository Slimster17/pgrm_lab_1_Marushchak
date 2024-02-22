import UIKit

var operation: String? = "+" // (+, -, *, /)
var operand1: Int? = 10
var operand2: Int? = 5

func add(_ a: Int, _ b: Int) -> Int
{
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int
{
    return a - b
}

func multiply(_ a: Int, _ b: Int) -> Int
{
    return a * b
}

func divide(_ a: Int, _ b: Int) -> Int
{
    guard b != 0 else
    {
        print("Error: Division by zero!")
        return 0
    }
    return a / b
}

if let operation = operation, let operand1 = operand1, let operand2 = operand2
{
    var result: Int = 0
    switch operation
    {
    case "+":
        result = add(operand1, operand2)
    case "-":
        result = subtract(operand1, operand2)
    case "*":
        result = multiply(operand1, operand2)
    case "/":
        result = divide(operand1, operand2)
    default:
        print("Unknown operation")
    }
    
    print("Result: \(result)")
}
    
else
{
    print("Null parameter")
}
