//  🏔️ MTECH Code Challenge SF15: "Alternating 1s and 0s"
//  Concept: Use for loops to produce strings or collections

//  Instructions:
    //  Create a function called 'stringy' that takes a size and returns a string of alternating '1s' and '0s' that is that size.
    //  The string should start with a 1.

//  Restrictions:
    //  The size will always be positive and will only use whole numbers.

//  Examples:
    //  Input: 6
    //  Output: "101010".

    //  Input: 4
    //  Output: "1010".

    //  Input 11:
    //  Output: "10101010101".

//  ⌺ Black Diamond Challenge:
    //  Add a second parameter that takes a bool. If true, start the string with a 1; if false, start it with a 0.
    //  Alternate from there as expected, i.e. "01010"


func get0Or1(index: Int, startWithOne: Bool) -> String {
    return index.isMultiple(of: 2) ? (startWithOne ? "1" : "0") : (startWithOne ? "0" : "1")
}





func stringy(_ size: Int, startWithOne: Bool = true) -> String {
    var result: String = ""
    for i in 0..<size {
        result += get0Or1(index: i, startWithOne: startWithOne)
    }
    
    return result
}






func stringyWithForEach(_ size: Int, startWithOne: Bool = true) -> String {
    var result: String = ""
    
    (0..<size).forEach { result += get0Or1(index: $0, startWithOne: startWithOne) }
    
    return result
}





func stringyWithReduce(_ size: Int, startWithOne: Bool = true) -> String {
    (0..<size).reduce("") { "\($0)\(get0Or1(index: $1, startWithOne: startWithOne))" }
}





func stringyWithMap(_ size: Int, startWithOne: Bool = true) -> String {
    (0..<size).map { get0Or1(index: $0, startWithOne: startWithOne) }.joined()
}

stringy(6)
stringyWithForEach(6)
stringyWithReduce(6)
stringyWithMap(6)

stringy(6, startWithOne: false)
stringyWithForEach(6, startWithOne: false)
stringyWithReduce(6, startWithOne: false)
stringyWithMap(6, startWithOne: false)
