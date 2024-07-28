// The following code is based on https://docs.swift.org/swift-book/documentation/the-swift-programming-language/guidedtour.

print("Hello, World!")

var myVariable: Int = 42
myVariable = 50
let myConstant: Int = 42

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

let label: String = "The width is "
let width: Int = 94
let widthLabel: String = label + String(width)
var experiment: String = """
    Running `swiftc A_Swift_Tour.swift`
    when A_Swift_Tour.swift contains `let widthLabel: String = label + width`
    yields the following error.

    A_Swift_Tour.swift:15:34: error: cannot convert value of type 'Int' to expected argument type 'String'
    let widthLabel: String = label + width
                                    ^
    error: fatalError
    """

let apples: Int = 3
let oranges: Int = 5
let appleSummary: String = "I have \(apples) apples."
let fruitSummary: String = "I have \(apples + oranges) pieces of fruit."
let stringWithCalculation: String = "1.0 + 2.0 = \(1.0 + 2.0)."
let name: String = "Tom"
var greeting: String = "Hello, \(name)!"
let quotation: String = """
    Indentation at the start of each quoted line is removed,
    as long as it matches the identation of the closing quotation marks.

    Even though there's whitespace to the left,
    the actual lines aren't indented.
        Except for this line.
    Double quotes (") can appear without being escaped.

    I still have \(apples + oranges) pieces of fruit.
    """

var fruits: [String] = ["strawberries", "limes", "tangerines"]
fruits[1] = "grapes"
var occupations: [String: String] = [
    "Malcom": "Captain",
    "Kaylee": "Mechanic"
]
occupations["Jayne"] = "Public Relations"
fruits.append("blueberries")
print(fruits)
fruits = []
occupations = [:]
let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]

let individualScores: [Int] = [75, 43, 103, 87, 12]
var teamScore: Int = 0
for score: Int in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)
let scoreDecoration: String = if teamScore > 10 {
    "🎉"
} else {
    ""
}
print("Score: ", teamScore, scoreDecoration)

var optionalString: String? = "Hello"
print(optionalString == nil)
var optionalName: String? = "John Appleseed"
greeting = "Hello!"
if let name: String = optionalName {
    greeting = "Hello, \(name)"
}
optionalName = nil
greeting = "Hello!"
if let name: String = optionalName {
    greeting = "Hello, \(name)"
}
print(greeting)
optionalName = nil
greeting = "Hello!"
if let name: String = optionalName {
    greeting = "Hello, \(name)"
} else if optionalName == nil {
    greeting = "Hello! I would like to know your name."
}
print(greeting)

let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting: String = "Hi \(nickname ?? fullName)"
if let nickname {
    print("Hey, \(nickname)")
}

let vegetable: String = "red pepper"
switch vegetable {
    case "celery":
        print("Add some raisins and make ants on a log.")
    case "cucumber", "watercress":
        print("That would make a good tea sandwich.")
    case let x where x.hasSuffix("pepper"):
        print("Is it a spicy \(x)?")
    default:
        print("Everything tastes good in soup.")
}
experiment = """
    Excluding the default case in the switch statement above yields error message

    switch vegetable {
    ^
    error: fatalError
    """