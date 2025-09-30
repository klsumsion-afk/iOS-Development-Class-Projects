import UIKit

//enum Operator: String {
//    case addition
//    case subtraction
//    case multiplication
//    case division
//    case equal
//    case clear
//}
//
//
//enum PressableNumberButtons: String {
//    case zero = "0"
//    case one = "1"
//    case two = "2"
//    case three = "3"
//    case four = "4"
//    case five = "5"
//    case six = "6"
//    case seven = "7"
//    case eight = "8"
//    case nine = "9"
//    case decimal = "."
//}
//
//class Calculator {
    
//    var runningValue: Double? /*the stored value of the previous input*/
//    var input: String = "0" /*current input being actively entered*/
//    var pendingOperation: Operator? /*the operator and its outcome resulting from the runningValue before equal is used; the sum of the current runningValue*/
//    var didJustTapOperator = false /*stores input as runningValue and starts a new input at 0*/
//    
//    func numberButtonPressed(_ num: PressableNumberButtons) {
//        input += num.rawValue
//    }
//     
//    func operatorButtonPressed(_ selectedOperator: Operator) {
////        switch selectedOperator {
////        case .addition:
////            
////        case .subtraction:
////            
////        case .multiplication:
////           
////        case .division:
////            
////        case .equal:
////            
////        case .clear:
////            
////        }
//    }
//    
//    func additionPressed() {
//        runningValue + Double(input) == Double
//    }
//    
//    func subtractionPressed() {
////        runningValue - input
//    }
//    
//    func multiplicationPressed() {
////        runningValue * input
//    }
//    
//    func divisionPressed() {
//        
//    }
//    
//    func clearPressed() {
//        
//    }
//    
//    func equalPressed() {
//        
//    }
//    
//    func whenOperatorPressed() {
//        if didJustTapOperator == true {
//            let runningValue = Double(input) /*left is reserved for stored values, so the let is applied to runningValue which is the stored value property*/
//        }
//    }
//    
//}
//
//var calculator = Calculator()
//calculator.numberButtonPressed(.nine)
//calculator.operatorButtonPressed(.addition)
//calculator.numberButtonPressed(.one)
//calculator.numberButtonPressed(.zero)
//print(calculator)
//// input is a string that consists of numbers. When didJustTapOperator occurs it stores the current input as runningValue before erasing input and starting a new input at default "0". didJustTapOperator should convert input String into runningValue Double?. Once you have runningValue + runningValue pendingOperator takes effect and performs the operator to calculate runningValue. Ex: runningValue + runningValue becomes new runningValue so 1 + 1 becomes 2. When adding another operator it will be 2 + ____ until you use "=".
//
////newRunningValue?
//// pendingOperator calculates runningValue (Operator?) newRunningValue
