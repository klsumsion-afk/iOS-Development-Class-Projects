
import Foundation

enum Operations {
    case addition
    case subtraction
    case multiplication
    case division
    case clear
    case equal
}

enum PressNumber {
    case zero
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
}

class Calculator {
    var input: PressNumber = .zero
    var pendingOperator: Operations?
    var didJustTapOperator = false
    var runningValue: Double?
    
 
}
