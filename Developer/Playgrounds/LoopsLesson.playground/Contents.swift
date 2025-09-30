import UIKit

// MARK - For Loops

for index in 1...5 {
    print("This number is \(index)")
}

for _ in 1...3 {
    print("Hello, World!")
}
let _ = 1...3

let names = ["Alice", "Bob", "Charlie", "Diana", "Eve"]

for name in names {
    print("Hello, \(name)!")
}
/// Enumerate over the letters of the alphabet
for (index, letter) in "ABCDEFG".enumerated() {
    print("Letter: \(index + 1) is \(letter)")
    if index == 3 {
        print("This is the fourth letter!")
    }
}

//enumerate
/// Then you get it in a slightly different format
///  and it carries over when you return

/*
 this whole thing is a comment
 */

let vehicles = ["unicycle" : 1, "bicycle" : 2, "tricycle" : 3, "quad bike" : 4]

for (vehicle, wheels) in vehicles {
    print("A \(vehicle) has \(wheels) wheels.")
}

// Mark - While Loops

var numberOfLives = 3
var stillAlive = true

/// A while loop will continue to run as long as the condition is true.
/// In this case our condition is that numberOfLives is greater than 0.
/// BE CAREFUL WITH WHILE LOOPS, ALWAYS NEEDS A CONDITION THAT WILL EVENTUALLY END THE LOOP.
while stillAlive {
    playMove()
    updateLivesCount()
    if numberOfLives == 0 {
        stillAlive = false
    }
}


// Mark - Control Transfer Statements

/// break will end the loop early
for counter in -10...10 {
    print(counter)
    if counter == 0 {
        break
    }
}




// Helper Methods

func playMove() {
    print("Playing a move!")
}

@MainActor
func updateLivesCount() {
    numberOfLives -= 1
}


// Continue
for name in names {
    if name.contains("e") {
        continue
    }
    print("Congrats, \(name). You've got $100")
}
