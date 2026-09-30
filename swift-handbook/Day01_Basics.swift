import Foundation

// MARK: - 1. Variables and Constants
// 'var' is mutable (can be changed)
var greeting: String = "Hello, Swift!"
greeting = "Welcome to Day 1 of Swift!"

// 'let' is immutable (constant, cannot be changed)
let pi: Double = 3.14159265359
let platformName = "Apple Platforms" // Type inference at work

print(greeting)
print("Target: \(platformName) with Pi = \(pi)")


// MARK: - 2. Optionals and Safe Unwrapping
// An optional can contain a value OR nil (absence of a value)
var developerName: String? = "Coder"

// Method A: Optional Binding using `if let`
if let unwrappedName = developerName {
    print("Happy coding, \(unwrappedName)!")
} else {
    print("Developer name is nil.")
}

// Method B: Guard statement (common inside functions)
func greetDeveloper(name: String?) {
    guard let validName = name else {
        print("Error: Name cannot be nil.")
        return
    }
    print("Hello, \(validName) from inside a function!")
}

greetDeveloper(name: developerName)


// MARK: - 3. Exercises / Challenges
// Challenge 1: Change 'let' to test compiler safety.
// let fixedLanguage = "Swift"
// fixedLanguage = "Objective-C" // Uncomment to observe compiler error.

// Challenge 2: Safely unwrap this optional score
var userScore: Int? = 95
if let finalScore = userScore {
    print("Final verified score: \(finalScore)")
}
