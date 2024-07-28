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
if let nickname: String {
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

let interestingNumbers: [String: [Int]] = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25]
]
var largest: Int = 0
for (_, numbers) in interestingNumbers {
    for number: Int in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)
largest = 0
var typeOfLargestNumber: String = "placeholder"
for (typeOfNumber, numbers) in interestingNumbers {
    for number: Int in numbers {
        if number > largest {
            typeOfLargestNumber = typeOfNumber
            largest = number
        }
    }
}
print("The largest number was \(typeOfLargestNumber) \(largest).")

var n: Int = 2
while n < 100 {
    n *= 2
}
print(n)
var m: Int = 2
repeat {
    m *= 2
} while m < 100
print(m)
n = 2
while n < 0 {
    n *= 2
}
print(n)
m = 2
repeat {
    m *= 2
} while m < 0
print(m)

var total: Int = 0
for i: Int in 0..<4 {
    total += i
}
print(total)
total = 0
for i: Int in 0...4 {
    total += i
}
print(total)

func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print(greet(person: "Bob", day: "Tuesday"))
func greet(person: String, todays_lunch_special: String) -> String {
    return "Hello \(person), today's lunch special is \(todays_lunch_special)."
}
print(greet(person: "Bob", todays_lunch_special: "Green Eggs and Ham"))
func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print(greet(person: "Bob", day: "Tuesday"))
print(greet("John", on: "Wednesday"))

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min: Int = scores[0]
    var max: Int = scores[0]
    var sum: Int = 0
    for score: Int in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}
let statistics: (min: Int, max: Int, sum: Int) = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)

func returnFifteen() -> Int {
    var y: Int = 10
    func add() {
        y += 5
    }
    add()
    return y
}
print(returnFifteen())

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment: ((Int) -> Int) = makeIncrementer()
print(increment(7))

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item: Int in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers: [Int] = [20, 19, 7, 12]
print(hasAnyMatches(list: numbers, condition: lessThanTen))

/* Functions are actually a special case of closures:
blocks of code that can be called later.
The code in a closure has access to things like variables and functions
that were available in the score where the closure was created,
even if the closure is in a different scope when [the closure is] executed...
You can write a closure without a name by surrounding code with braces...
Use in to separate the arguments and return type from the body.*/
var mappedNumbers: [Int] = numbers.map(
    {
        (number: Int) -> Int in
            let result: Int = 3 * number
            return result
    }
)
print(mappedNumbers)
mappedNumbers = numbers.map(
    {
        (number: Int) -> Int in
            var result: Int = 0
            if number % 2 == 1 {
                result = 0
            } else {
                result = 3 * number
            }
            return result
    }
)
print(mappedNumbers)
mappedNumbers = numbers.map(
    {
        number in 3 * number
    }
)
print(mappedNumbers)
let sortedNumbers: [Int] = numbers.sorted { $0 > $1 }
print(sortedNumbers)

class Shape {
    var numberOfSides: Int = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides"
    }
}
var shape: Shape = Shape()
shape.numberOfSides = 7
var shapeDescription: String = shape.simpleDescription()
print(shapeDescription)

class ImprovedShape {
    var numberOfSides: Int = 0
    let dictionaryOfNumbersOfSidesAndNames: [Int: String] = [
        0: "nothing",
        1: "line segment",
        2: "path with two line segments",
        3: "triangle",
        4: "quadrilateral",
        5: "pentagon"
    ]
    func setNumberOfSides(numberOfSidesToUse: Int) {
        self.numberOfSides = numberOfSidesToUse
    }
    func simpleDescription() -> String {
        let nameOfShape: String = dictionaryOfNumbersOfSidesAndNames[numberOfSides] ?? "unknown name of shape"
        return "A shape with \(numberOfSides) sides is a \(nameOfShape)."
    }
}
var improvedShape: ImprovedShape = ImprovedShape()
improvedShape.setNumberOfSides(numberOfSidesToUse: 5)
var improvedShapeDescription: String = improvedShape.simpleDescription()
print(improvedShapeDescription)

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    init(name: String) {
        self.name = name
    }
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides"
    }
}

class Square: NamedShape {
    var sideLength: Double

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }

    func area() -> Double {
        return sideLength * sideLength
    }

    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}
let square: Square = Square(sideLength: 5.2, name: "my test square")
print(square.area())
print(square.simpleDescription())

class Circle: NamedShape {
    var radius: Double = 0

    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
        numberOfSides = Int.max
    }

    func area() -> Double {
        return Double.pi * radius * radius
    }

    override func simpleDescription() -> String {
        return "A circle with radius of length \(radius)"
    }
}
let circle: Circle = Circle(radius: 5.2, name: "my test circle")
print(circle.area())
print(circle.simpleDescription())

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }

    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }

    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)"
    }
}
var triangle: EquilateralTriangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)