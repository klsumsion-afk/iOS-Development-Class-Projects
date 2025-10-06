//
//  Calculator.swift
//  Calculator Project
//
//  Created by Jane Madsen on 9/29/25.
//

import SwiftUI

@Observable
class Calculator {
    var displayedString = "0"  // Any time you update this String, it will display on the calculator.
    var lastEnteredOperator: CalculatorInput = .zero
    var runningTotal: Double = 0.0
    var shouldClear: Bool = true
    
    // Add additional variables here.
    
    func handleInput(_ input: CalculatorInput) {
        // Each case below represents a single button pressed on the calculator. Add a function for each; the default case covers the number buttons and has been set up for you, but feel free to change this as you see fit.
        
        switch input {
        case .backspace:
            backspace()
        case .clear:
            clear()
        case .percent:
            percent()
        case .divide:
            divide()
        case .multiply:
            multiply()
        case .subtract:
            subtract()
        case .add:
            add()
        case .invertSign:
            invertSign()
        case .decimal:
            decimal()
        case .equal:
            equal()
        default:
            number(Int(input.rawValue)!)
        }
    }
    
    func number(_ number: Int) {
        if shouldClear {
            displayedString = String(number)
            shouldClear = false
        } else {
            displayedString += String(number)
        }
    }
    
    func backspace() {
        lastEnteredOperator = .backspace
        displayedString = "0"
    }
    
    func clear() {
        lastEnteredOperator = .clear
        runningTotal = 0.0
        displayedString = "0"
        shouldClear = true
        lastEnteredOperator = .zero
    }
    
    func percent() {
//        Black Diamond
    }
    
    func divide() {
//        Need to fix so that the displayedString is not automatically divided by itself
        lastEnteredOperator = .divide
        if runningTotal == 0.0 {
            runningTotal = Double(displayedString)!
        }
        runningTotal /= Double(displayedString)!
         displayedString = String(runningTotal)
        shouldClear = true
    }
    
    func multiply() {
//        Need to fix so that the displayedString is not automatically multiplied by itself
        lastEnteredOperator = .multiply
        if runningTotal == 0.0 {
            runningTotal = Double(displayedString)!
        }
        runningTotal *= Double(displayedString)!
         displayedString = String(runningTotal)
        shouldClear = true
    }
    
    func subtract() {
        lastEnteredOperator = .subtract
        if runningTotal == 0.0 {
            runningTotal = Double(displayedString)!
        } else {
            runningTotal -= Double(displayedString)!
        }
         displayedString = String(runningTotal)
        shouldClear = true
    }
    
    func add() {
        lastEnteredOperator = .add
        runningTotal += Double(displayedString)!
         displayedString = String(runningTotal)
        shouldClear = true
        
        
    }
    
    func invertSign() {
//        lastEnteredOperator = .invertSign
//        if runningTotal == Double(displayedString)! {
//            runningTotal -= Double(displayedString)!
//        } else {
//            runningTotal += Double(displayedString)!
//        }
//        displayedString = String(runningTotal)
//        shouldClear = true
    }
    
    func decimal() {
//        I was thinking that "." is similiar to pressing a number, but it didn't turn out the way I wanted. I need it to be able to add onto the string in the same manner as "number".
        lastEnteredOperator = .decimal
        if shouldClear {
            displayedString = "."
            shouldClear = false
        } else {
            displayedString += "."
        }
    }
    
    func equal() {
        lastEnteredOperator = .equal
//        How do I adjust the operator based on the lastEnteredOperator before .equal?
        runningTotal ?= Double(displayedString)!
         displayedString = String(runningTotal)
        shouldClear = true
//        switch lastEnteredOperator {
//        case .divide:
//            divide()
//        case .multiply:
//            multiply()
//        case .subtract:
//            subtract()
//        case .add:
//            add()
//        default:
//            print("Error")
//        }
    }
}


#Preview {
    ContentView()
}
