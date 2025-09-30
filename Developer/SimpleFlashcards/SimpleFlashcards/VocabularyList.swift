//
//  VocabularyList.swift
//  SimpleFlashcards
//
//  Created by Jane Madsen on 12/11/24.


// MARK: Instructions
// Each day, we will have a word of the day. Take a moment at the beginning of class to add the word to your vocabulary list here. (Feel free to add other words as well!)
// It's important that your syntax is correct. Several examples are provided below for you to refer to.
// To create a Vocab object, you only need to provide the word. All other fields are optional. For example, for a word with only a definition, you could type:

let exampleVocab = Vocab(word: "compiler", definition: "A program that translates human readable source code into binary.")

// If you get an error, check that your quotation marks, colons, brackets, parentheses, and commas are all placed correctly. Feel free to ask for help if you get stuck.
// To add images to your vocab, you'll need to first add them to the Assets folder. Then, set the referenceImage string to the name of the image in that folder.
// Ask for help if needed!


// MARK: Vocab Model and List

import Foundation

struct Vocab {
    var word: String
    var definition: String = ""
    var synonyms: [String] = []
    var notes: [String] = []
    var referenceImage: String = ""
    
    // Add words to your vocabulary list here. The order they are in below is the order they will appear in the app.
    static let list: [Vocab] = [
        Vocab(
            word: "constants",
            definition: "A constant is a value that cannot be altered during the execution of a program.",
            synonyms: ["Immutable Value"],
            notes: ["Declared using the 'let' keyword in Swift."],
            referenceImage: "constant"
        ),
        Vocab(
            word: "variables",
            definition: "A variable is a named storage that can hold a value and whose value can be changed during program execution.",
            synonyms: ["Mutable Value"],
            notes: ["Declared using the 'var' keyword in Swift."],
            referenceImage: "variable"
        ),
        Vocab(
            word: "strings",
            definition: "A string is a sequence of characters used to represent text.",
            synonyms: ["Text", "Character Sequence"],
            notes: ["In Swift, strings are declared using double quotes (\" \")."],
            referenceImage: "string"
        ),
        Vocab(
            word: "functions",
            definition: "A function is a reusable block of code that performs a specific task.",
            synonyms: ["Method", "Procedure"],
            notes: ["Defined using the 'func' keyword in Swift."],
            referenceImage: "func"
        ),
        Vocab(
            word: "arrays",
            definition: "An array is a collection of elements stored in a specific order.",
            synonyms: ["List", "Sequence"],
            notes: ["Arrays in Swift are zero-indexed and declared using square brackets []."],
            referenceImage: "array"
        ),
        Vocab(
            word: "methods",
            definition: "A method is a function associated with a specific type, such as a class, struct, or enum.",
            synonyms: ["Member Function"],
            notes: ["Methods are called on instances of a type."],
            referenceImage: "method"
        ),
        Vocab(
            word: "classes",
            definition: "A class is a blueprint for creating objects, providing initial values for properties and implementations of behavior.",
            synonyms: ["Object Blueprint"],
            notes: ["Classes support inheritance and are declared using the 'class' keyword in Swift."],
            referenceImage: "class"
        ),
        Vocab(
            word: "structs",
            definition: "A struct is a value type that encapsulates properties and methods.",
            synonyms: ["Structure", "Value Type"],
            notes: ["Structs in Swift are declared using the 'struct' keyword and are copied when assigned."],
            referenceImage: "struct"
        ),
        Vocab(
            word: "Syntax",
            definition: "The set of rules that defines the combinations of symbols that are considered to be correctly structured in a language.",
            synonyms: ["Grammar"],
            notes: ["The set of rules that defines the combinations of symbols that are considered to be correctly structured in a language. Synonyms: Grammar. Notes: Syntax mistakes are the most common type of error and will most always be flagged. Syntax must be perfect for the complier to understand."],
        ),
        Vocab(
            word:"Object",
            definition: "A single grouping of data + behaviors (such as functions) with an identity into one item.",
            synonyms: ["Struct, class, model"],
            notes: ["Every String, Int, Bool, or custom-type instance you create is an object."],
        ),
        Vocab(
            word: "Instance",
            definition: "A specific occurence of an object with properties distinct from other instanaces.",
            synonyms: ["Occurrence"],
            notes: ["If you have a Person type, then create two persons named Xochitl and Kiri, each would be a seperate instance of person."],
        ),
        Vocab(
            word: "IDE",
            definition: "A tool for developing, building, running, and testing code.",
            synonyms: ["Xcode"],
            notes: ["Integrated Deveopment Environment"],
        ),
        Vocab(
            word: "Pointer",
            definition: "An address that points to a location in memory where a value is stored.",
            synonyms: ["Memory Address, Reference"],
            notes: ["Used extensively in languages like C and C++"],
        ),
        Vocab(
            word: "Compiler",
            definition: "A program that translates human readable source code into machine readable binary.",
            synonyms: ["Translator"],
            notes: ["Commonly part of IDE's"],
        ),
        Vocab(
            word: "Console",
            definition: "Interface within Xcode where developers can view and interact with runtime output generated by their application",
            synonyms: ["Output Window, Terminal (technically different but sometimes used), and log."],
            notes: ["This is where print() statements output"],
        ),
        Vocab(
            word: "Syntax",
            definition: "The set of rules that defines the combinations of symbols that are considered to be correctly structured in a language.",
            synonyms: ["Grammar"],
            notes: ["Syntax mistakes are the most common type of error and will most always be flagged. Syntax must be perfect for the compiler to understand."],
        ),
        Vocab(
            word: "Runtime",
            definition: "The period during which a program is executing and actively performing tasks.",
            synonyms: ["Live State"],
            notes: ["Errors you don't find until runtime are runtime errors."],
        ),
        Vocab(
            word: "Type Safety",
            definition: "A programming feature that prevents mismatched types during compliation.",
            synonyms: ["Strict Typing"],
            notes: ["Unlike some other langauges, Swift enforces type safety."],
        ),
        Vocab(
            word: "Build",
            definition: "The process of compiling code and generating an executable application",
            synonyms: ["Compile, Package"],
            notes: ["Swift uses Xcode to perform builds."],
        ),
        Vocab(
            word: "Literal",
            definition: "A fixed value in sorce code, such as numbers, strings, or booleans.",
            synonyms: ["Constant/Fixed Value"],
            notes: ["Examples: 42,'Hello!', True."],
        ),
        Vocab(
            word: "Interpolation",
            definition: "Embedding vars or expressions in a string.",
            synonyms: ["Literal"],
            notes: ["backslash()"]
        ),
        Vocab(
            word: "Object-Oriented",
            definition: "A programming paradigm based on classes and objects.",
            synonyms: ["Oop, Class-Based"],
            notes: ["Swift supports object-oriented programming along with other paradigms."],
        ),
        Vocab(
            word: "Model",
            definition: "A representation of data or business logic in an app.",
            synonyms: ["Representation, Data Structure"],
            notes: ["A struct called 'person' MODELS the data and funcs associated with an actual person."],
        ),
        Vocab(
            word:"Conditional",
            definition: "Code logic that executes different paths based on the current state of an app.",
            notes: ["-if, -else, -switch"],
        ),
        Vocab(
            word: "Parameter",
            definition: "A variable passed into a function or method to provide input data.",
            synonyms: ["Argument, Input"],
            notes: ["Can be labeled or unlabeled with internal and external names in Swift."],
        ),
        Vocab(
            word: "Method",
            definition: "A function defined within a class, struct, or protocol.",
            synonyms: ["Operation, Function"],
            notes: ["Called on instances of a type."]
        ),
        Vocab(
            word: "Iteration",
            definition: "A single run of a block of code in a loop",
            synonyms: ["Repetition, Loop"],
        ),
        Vocab(
            word: "Command Line Interface, CLI",
            definition: "A text based interface for interacting with software or the operating system.",
            synonyms: ["Terminal"],
            notes: ["Useful for Swift sctipting and debugging."],
        ),
        Vocab(
            word: "Distributed version control system, DVCS",
            definition: "A tool for managing source code across multiple developers and machines.",
            synonyms: ["Source control"],
            notes: ["Git is one example of a DVCS"],
        ),
        Vocab(
            word: "Property",
            definition: "A variable or value associated with an object, class, or struct.",
            synonyms: ["Attribute, Field"],
            notes: ["Can be stored, computed, or lazy"]
        ),
        Vocab(
            word: "Immutable",
            definition: "Unable to be changed.",
            synonyms: ["Unchanged,Fixed"],
        ),
        Vocab(
            word: "Control Flow",
            definition: "The order in which individual statements or blocks of code are executed.",
            synonyms: ["Execution Order, Logic Flow"],
            notes: ["Loops and conditionals dictate flow."]
        ),
        Vocab(
            word: "Nesting",
            definition: "Placing one structure inside another, such as a loop within a loop, func withing a func, etc.",
            synonyms: ["Inner"],
            notes: ["Usually avoided in Swift except for specific cases."],
        ),
        Vocab(
            word: "Call",
            definition: "Invoking or executing a function or method",
            synonyms: ["Invoke, Execute"],
            notes: ["Swift uses parenthese to call functions: 'myFunction()'"],
        ),
        Vocab(
            word: "Scope",
            definition: "The region of code where a var or func is accessible.",
            synonyms: ["Visibility, Context"],
            notes: ["Swift supports scope specification w/ the keywords 'public','private', and 'fileprivate'."],
        ),
        Vocab(
            word: "Mutating",
            definition: "A keyword in Swift that allows methods to modify 'struct' or 'enum' properties.",
            synonyms: ["Changing, Modifying"],
            notes: ["Only applicable to value types-ensures safety when property is stored as a constant."],
        ),
        Vocab(
            word: "Overloading",
            definition: "Defining multiple functions with the same name but different parameters.",
            synonyms: ["Polymorphism, Redefinition"],
            notes: ["Even if all is identical except input types, compiler will detect what types your'e using when called and choose the appropriate function."],
        ),
        Vocab(
            word: "Tuple",
            definition: "A group of values grouped into a single compound value.",
            synonyms: ["Group, Composite Value"],
            notes: ["Swift tuples can hold any number of types. (Hot, 38.7) (true, false, true)."],
        ),
        Vocab(
            word: "Controller",
            definition: "A component that manages application logic and user interaaction.",
            synonyms: ["Manager, Handler"],
            notes: ["Part of MVC architecture in Swift."],
        ),
        Vocab(
            word: "Syntactic Sugar",
            definition: "Simplified syntax that makes code more readable without adding or changing functionality.",
            synonyms: ["Convenience, Simplified Syntax"],
            notes: ["Examples include $0 in closures or optional unwrapping."],
        )
    ]
}
