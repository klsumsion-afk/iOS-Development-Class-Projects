/*:
## Exercise - For-In Loops
 
 Create a for-in loop that loops through values 1 to 100, and prints each of the values.
 */
for index in 1...100 {
    print(index)
}

//:  Create a for-in loop that loops through each of the characters in the `alphabet` string below, and prints each of the values alongside the index.
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" 
for (index, alphabet) in "ABCDEFGHIJKLMNOPQRSTUVWXYZ".enumerated() {
    print("\(index): \(alphabet)")
}

//:  Create a `[String: String]` dictionary, where the keys are names of states and the values are their capitals. Include at least three key/value pairs in your collection, then use a for-in loop to iterate over the pairs and print out the keys and values in a sentence.
var dictionary = ["Utah": "Salt Lake City", "Texas": "Austin", "North Carolina": "Raleigh"]

for (states, capitals) in dictionary {
    print("\(capitals) is the capital of \(states).")
}


/*:
page 1 of 6  |  [Next: App Exercise - Movements](@next)
 */
