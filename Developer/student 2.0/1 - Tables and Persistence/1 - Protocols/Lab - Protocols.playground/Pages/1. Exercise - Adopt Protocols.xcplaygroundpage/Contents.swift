/*:
## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */
import Foundation

final class Martian: Codable {
    let name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let martian1 = Martian(name: "Zekesburg", age: 900)
let martian2 = Martian(name: "Mr. Mixus Pigglet", age: 150)
//:  Make the `Human` class adopt the `CustomStringConvertible` protocol. Print both of your previously initialized `Human` objects.
extension Martian: CustomStringConvertible {
    var description: String {
        "Martian - name: \(name), age: \(age)"
    }
}

print(martian1)
print(martian2)
//:  Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
extension Martian: Equatable {
    static func == (lhs: Martian, rhs: Martian) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
}

let areEqual = martian1 == martian2
let isNotEqual = martian1 != martian2

print(areEqual)
print(isNotEqual)
//:  Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
extension Martian: Comparable {
    static func < (lhs: Martian, rhs: Martian) -> Bool {
        return lhs.age < rhs.age
    }
}

let human3 = Martian(name: "Dude", age: 50)
let human4 = Martian(name: "Lana", age: 26)
let human5 = Martian(name: "Martha", age: 90)

let martians: [Martian] = [martian1, martian2, human3, human4, human5]
let sortedMartians: [Martian] = martians.sorted()
//:  Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored, and print it to the console.
let jsonEncoder = JSONEncoder() //JSONEncoder
if let jsonData = try? jsonEncoder.encode(martian1) {
    if let jsonString = String(data: jsonData, encoding: .utf8) {
        print(jsonString)
    }
}

//Example of another type of protocol.
import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
    }
}
/*:
page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
 */
