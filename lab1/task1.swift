//
//  task2.swift
//  lab1
//
//  Created by Sarvar Saidazov on 01.02.2024.
//

import Foundation

func task1(){
    FIRST :
        while (true) {
        print("Enter first variable")
        if let firstVarStr = readLine() , let firstVariable = Double (firstVarStr) {
            SECOND : while (true) {
                print("Enter second variable")
                if let secondVarStr = readLine() , let secondVariable = Double (secondVarStr) {
                MAIN: while (true) {
                    print("Enter operation(+,-,*,/,**,√)")
                    let operation = readLine()
                    switch operation {
                    case "+":
                        print("Result is \(addition(a : firstVariable,b :secondVariable))")
                        break MAIN
                    case "-":
                        print("Result is \(subtraction(a : firstVariable,b :secondVariable))")
                        break MAIN
                    case "*":
                        print("Result is \(multiplication(a : firstVariable,b :secondVariable))")
                        break MAIN
                    case "/":
                        if secondVariable == 0 {
                            print("Cant divide by 0.TRY AGAIn")
                            continue MAIN
                        } else {
                            print("Result is \(multiplication(a : firstVariable,b :secondVariable))")
                            break MAIN
                        }
                    case "**":
                        print("Result is \(exponentiation(a : firstVariable,b :secondVariable))")
                        break MAIN
                    case "√":
                        if firstVariable < 0 {
                            print("First var is less than 0 unable to solve.Try Again")
                            continue FIRST
                        } else if secondVariable < 0 {
                            print("Second var is less than 0 unable to solve.Try Again")
                            continue SECOND
                        }
                        print("Square root of 1st is \(root(a : firstVariable))")
                        print("Square root of 2nd is \(root(a : secondVariable))")
                        break MAIN
                        
                    default:
                        print("Wrong Operation.Try Again")
                        continue
                    }
                }
                    break SECOND
                } else {
                    print("Wrong Input.Try Again")
                    continue SECOND
                }
            }
            break FIRST
        } else {
            print("Wrong Input.Try Again")
            continue FIRST
        }
    }

}

func addition(a : Double,b : Double) -> Double {
    return a + b
}

func subtraction(a : Double,b : Double) -> Double {
    return a - b
}

func multiplication(a : Double,b : Double) -> Double {
    return a * b
}

func division(a : Double,b : Double) -> Double {
    return a / b
}

func exponentiation(a : Double,b : Double) -> Double {
    return pow(a, b)
}

func root(a : Double) -> Double {
    return sqrt(a)
}

