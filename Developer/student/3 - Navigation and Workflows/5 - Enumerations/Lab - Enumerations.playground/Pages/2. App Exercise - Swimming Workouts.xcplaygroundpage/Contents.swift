/*:
## App Exercise - Swimming Workouts

 >These exercises reinforce Swift concepts in the context of a fitness tracking app.

 Previous app exercises have introduced the idea that your fitness tracking app may allow users to track swimming workouts. Create a `SwimmingWorkout` struct below with properties for `distance`, `time`, and `stroke`. `distance` and `time` should be of type `Double` and will represent distance in meters and time in seconds, and `stroke` should be of type `String`.
 */
struct SwimmingWorkout {
    var distance: Double
    var time: Double
    var stroke: Stroke
    
    static var freestyleWorkout: [SwimmingWorkout] = [ ]
    static var butterflyWorkout: [SwimmingWorkout] = [ ]
    static var backstrokeWorkout: [SwimmingWorkout] = [ ]
    static var breaststrokeWorkout: [SwimmingWorkout] = [ ]
    
    enum Stroke {
        case freestyle
        case butterfly
        case backstroke
        case breaststroke
    }
    
    func save() {
        switch stroke {
        case .freestyle:
            SwimmingWorkout.freestyleWorkout.append(self)
        case .butterfly:
            SwimmingWorkout.butterflyWorkout.append(self)
        case .backstroke:
            SwimmingWorkout.backstrokeWorkout.append(self)
        case .breaststroke:
            SwimmingWorkout.breaststrokeWorkout.append(self)
        }
    }
    
}

//:  Allowing `stroke` to be of type `String` isn't very type-safe. Inside the `SwimmingWorkout` struct, create an enum called `Stroke` that has cases for `freestyle`, `butterfly`, `backstroke`, and `breaststroke`. Change the type of `stroke` from `String` to `Stroke`. Create two instances of `SwimmingWorkout` objects.
let practiceOne = SwimmingWorkout(distance: 20.0, time: 60.2, stroke: .butterfly)
practiceOne.save()
let practiceTwo = SwimmingWorkout(distance: 20.0, time: 59.0, stroke: .freestyle)
practiceTwo.save()
//:  Now imagine you want to log swimming workouts separately based on the swimming stroke. You might use arrays as static variables on `SwimmingWorkout` for this. Add four static variables, `freestyleWorkouts`, `butterflyWorkouts`, `backstrokeWorkouts`, and `breaststrokeWorkouts`, to `SwimmingWorkout` above. Each should be of type `[SwimmingWorkout]` and should default to empty arrays.
// This section is located in the struct above

//:  Now add an instance method to `SwimmingWorkout` called `save` that takes no parameters and has no return value. This method will add its instance to the static array on `SwimmingWorkout` that corresponds to its swimming stroke. Inside `save` write a switch statement that switches on the instance's `stroke` property, and appends `self` to the proper array. Call save on the two instances of `SwimmingWorkout` that you created above, and then print the array(s) to which they should have been added to see if your `save()` method works properly.
print(SwimmingWorkout.butterflyWorkout)
print(SwimmingWorkout.freestyleWorkout)
