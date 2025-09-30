/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var randomCollection: [Any] = [0, 1.1, "two", true, 4, 5.5, "six", true ]
print(randomCollection)
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for Int in randomCollection {
    print("The integer has a value of \(Int)")
}
for Double in randomCollection {
    print("The decimal has a value of \(Double)")
}
for String in randomCollection {
    print("The word has a value of \(String)")
}
for Bool in randomCollection {
    print("The statment is \(Bool)")
}
//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var randomDictionary: [String: Any] = ["Zero" : 0.0, "One" : 1, "Two" : "two", "Three" : true, "Four" : 4.0]
print(randomDictionary)
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0
for (key, value) in randomDictionary {
    switch value {
    case is String?:
       total += 1
    case let pizzadonut as Bool:
        if pizzadonut == true {
            total += 2.0
        } else {
            total -= 3.0
        }
    case let integer as Int:
        total += Double(integer)
    case let double as Double:
        total += double
    default:
        fatalError("unknown type")
    }
}

//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0
for (key, value) in randomDictionary {
    switch value {
    case let integer as Int:
        total2 += Double(integer)
    case let double as Double:
        total2 += double
    case let unicorn as Bool:
        continue
    case let string as String:
        total2 += Double(string) ?? 0
    default:
        fatalError("unknown type")
    }
}
/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
