/*:
## Exercise - Basic Arithmetic
 
 You decide to build a shed and want to know beforehand the area of your yard that it will take up. Create two constants, `width` and `height`, with values of 10 and 20, respectively. Create an `area` constant that is the result of multiplying the two previous constants together, and print out the result.
 */
let width = 10
let height = 20
let area = width * height
print("The area is 200")
//:  You decide that you'll divide your shed into two rooms. You want to know if dividing it equally will leave enough room for some of your larger storage items. Create a `roomArea` constant that is the result of dividing `area` in half. Print out the result.
let roomArea = Double (200) * 0.5
print("The roomArea is 100")
//:  Create a `perimeter` constant whose value equals `width` plus `width` plus `height` plus `height`, then print out the result.
width + width + height + height
let perimeter = 60
print("The perimeter is 60")
//:  Print what you would expect the result of integer division of 10 divided by 3 to be. Create a constant, `integerDivisionResult` that is the result of 10 divided by 3, and print the value.
print("10 / 3 would be a decimal rounded down")
let integerDivisionResult = 10 / 3
print("value of integerDivisionResult is 3")
//:  Now create two constants, `double10` and `double3`, set to 10 and 3, and declare their types as `Double` values. Declare a final constant `divisionResult` equal to the result of `double10` divided by `double3`. Print the value of `divisionResult`. How does this differ from the value when using integer division?
let double10 :Double = 10
let double3 :Double = 3
let divisionResult = Double (10) / Double (3)
print("value of divisionResult is 3.333333333333334")
/*:
 Given the value pi (3.1415927), create a `radius` constant with a value of 5.0, then calculate the diameter and circumference of the circle using the following equations, and print the results:
 
 *diameter = 2 * radius*
 
 *circumference = 2 * pi * radius.*
 */
let pi = 3.1415927 
let radius = 5.0
let diameter = 2 * radius
let circumference = 2 * pi * radius
print("value of diameter is 10, and the value of circumference is 31.415927")
//:  Create an integer constant. Using the modulus operator, set its value to the remainder of 12 divided by 5.
let divident = 12
let divisor = 5
let quotient = divident / divisor
let remainder = divident % divisor
//:  Create two integer constants, `even` and `odd` and set them to any even integer and any odd integer, respectively. For each, print the remainder of dividing the value by 2. Looking at the results, how do you think you could use the remainder operator to determine if an integer is even or odd?
let a = 14
let b = 6
(14 / 6) / 2
let c = 21
let d = 20
(21 / 20) / 2
print("If even the remainder will be 0 or even while an odd would result with an odd number")
/*:
page 1 of 8  |  [Next: App Exercise - Fitness Calculations](@next)
 */
