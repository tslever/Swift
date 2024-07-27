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
let experiment_1: String = """
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
let greeting: String = "Hello, \(name)!"
let quotation = """
    Indentation at the start of each quoted line is removed,
    as long as it matches the identation of the closing quotation marks.

    Even though there's whitespace to the left,
    the actual lines aren't indented.
        Except for this line.
    Double quotes (") can appear without being escaped.

    I still have \(apples + oranges) pieces of fruit.
    """