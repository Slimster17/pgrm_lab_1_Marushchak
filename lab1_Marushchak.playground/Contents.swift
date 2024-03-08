import UIKit

enum CalculationError: Error
{
    case divisionByZero
    case nullParameter
    case unknownOperation
}

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

func divide(_ a: Int, _ b: Int) throws -> Int
{
    guard b != 0 else {
        throw CalculationError.divisionByZero
    }
    return a / b
}

func calculate(_ operand1: Int?, _ operand2: Int?, _ operation: String?) throws -> Int
{
    guard let operand1 = operand1, let operand2 = operand2, let operation = operation
        else
    {
        throw CalculationError.nullParameter
    }
    
    switch operation
    {
    case "+":
        return add(operand1, operand2)
    case "-":
        return subtract(operand1, operand2)
    case "*":
        return multiply(operand1, operand2)
    case "/":
        return try divide(operand1, operand2)
    default:
        throw CalculationError.unknownOperation
    }
}

var operation: String? = "yy"
var operand1: Int? = 10
var operand2: Int? = 5

do
{
    let result = try calculate(operand1, operand2, operation)
    print("Result: \(result)")
}
catch CalculationError.nullParameter
{
    print("Error: Null parameter")
}
catch CalculationError.divisionByZero
{
    print("Error: Division by zero!")
}
catch CalculationError.unknownOperation
{
    print("Error: Unknown operation")
}
catch
{
    print("An unknown error occurred: \(error)")
}
