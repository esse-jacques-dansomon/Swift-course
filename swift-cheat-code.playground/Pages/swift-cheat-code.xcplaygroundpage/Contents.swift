
import UIKit

//00:00 Introduction

//01:21 Creating constants and variables,
 /* 1.1 varibale */
var myInt = 1
var myExplicitInt: Int = 1 // explicit type
var x = 1, y = 2, z = 3 // declare multiple integers
myExplicitInt = 2 // set to another integer value

 /* 1-2 Constants*/
let letMyInt = 1
//letMyInt = 2 // compile-time error!


//01:59 Strings
var myString = "a"
let myImmutableString = "c"
myString += "b" // ab
myString = myString + myImmutableString // abc
//myImmutableString += "d" // compile-time error!

let count = 7
let message = "There are \"\(count) \" days in a week"
let movie = """
A day in movie
of actor
"""


//03:38 Integers
let score = 10
let higherScore = score + 10
let halvedScore  = score / 2

var counter  = 10
counter += 5

let number = 150
print(number.isMultiple(of: 3))

let id = Int.random(in: 1...100)

//04:38 Decimals

let score2 = 3.1
let score3 = 3.0

//05:01 Booleans
let goodGogs  = true
let gameOver = false
var isSaved : Bool = true
 isSaved.toggle()  //set opposit val

//05:23 Joining strings
var name = "Esse"
let age  = 20
let stringMessage = "Hey am \(name) and I'm \(age) years old"

//05:59 Arrays
var colors  = ["Red", "Green", "Blue"]
var numbers = [4, 9, 15, 18]
var readings  = [0.1, 0.3, 0.8]
var moreColors: [String] = ["orange", "purple"] // explicit type
colors.append("green") // [red, blue, green]
//colors += "yellow" // [red, blue, green, yellow]
colors += moreColors // [red, blue, green, yellow, orange, purple]

var days = ["mon", "thu"]
var firstDay = days[0] // mon
days.insert("tue", at: 1) // [mon, tue, thu]
days[2] = "wed" // [mon, tue, wed]
days.remove(at: 0) // [tue, wed]


print(colors[0])
print(numbers[0])
print(readings[0])

colors.append("White")

//07:39 Dictionaries
var dictDays = ["mon": "monday", "tue": "tuesday"]
dictDays["tue"] = "tuesday" // change the value for key "tue"
dictDays["wed"] = "wednesday" // add a new key/value pair

var moreDays: Dictionary = ["thu": "thursday", "fri": "friday"]
moreDays["thu"] = nil // remove thu from the dictionary
moreDays.removeValue(forKey: "fri") // remove fri from the dictionary

//08:16 Sets
  // set a re similare to array except they cant have duplicate value
var numbersSet = Set([1,2,3,4,5,6,7,8,9,0])
print(numbersSet)
numbersSet.insert(10)
numbersSet.contains(11) // it execute instanly no matter the number of items

//09:10 Enums
enum weekDay {
    case monday, tuesday, wednesday, thurday, friday
}

var day = weekDay.friday
day = .monday // you can change the base by .

//09:40 Type annotations
var scoreType: Double = 0
var player: String = "Roy"
let luckNumber: Int  = 13
let pi : Double = 3.14
var isEnabled: Bool = true
var albums: Array<String> = ["Red", "Fearless"] //or
//var albums: [String]= ["Red", "Fearless"] //or
var teams: [String] = [String]()
var clues =  [String]()

var user: Dictionary<String, Int> = ["id": 1] //or
//var user: [String: Int] = ["id": 1]
var books: Set<String> = ["The rich dad", "Maimouna"]

/*Logical Operators*/
var happy = true
var sad = !happy // logical NOT, sad = false
var everyoneHappy = happy && sad // logical AND, everyoneHappy = false
var someoneHappy = happy || sad // logical OR, someoneHappy = true


//11:50 Conditions
let happyif = true
if happyif {
    print("We're Happy!")
} else {
    print("We're Sad :('")
}
// We're Happy!

let speed = 28
if speed <= 0 {
    print("Stationary")
} else if speed <= 30 {
    print("Safe speed")
} else {
    print("Too fast!")
}


//12:46 Switch statements
enum Weather  {
    case sun, rain, wind
}
let forecast = Weather.rain

switch forecast {
case .rain:
    print("it is raining")
case .sun:
    print("Sun")
default:
    print("wind")
}

//13:25 The ternary conditional operator
let userAge = 18
let canVote = age >= 19 ? "Yes" : "No"

//13:55 Loops
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]
for os in platforms {
    print("Swift works on \(os)")
}

for y in 1...13 { //loop grom 1 to 13
    print("5 * \(y) = \(5*y)")
}

for y in 1..<13 { //loop grom 1 to 12
    print("5 * \(y) = \(5*y)")
}

var lyric = "Haters gonna"
for _ in 1...5 {
    lyric += " hate"
}

var whileCount  = 10

while whileCount < 0 {
    print("count \(whileCount)")
    whileCount -= 1
}



//16:24 Functions
  // to create fuction, you need
func printTimesTable(number: Int) {
    for i in 0...12 {
        print("\(number) * \(i) = \(number * i)")
    }
}
printTimesTable(number: 3)

func oneLine() -> Int { Int.random(in: 1...10) }
oneLine()
oneLine()

//17:39 Returning multiple values from functions
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Esse", lastName: "Jacques")
}
let userG  = getUser()
print("Name: \(userG.lastName) \(userG.firstName)")

//18:45 Customizing parameter labels

let (firstName, _) =  getUser()
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}
//19:52 Providing default values for parameters
func greet(_ person: String, formal:Bool = false) -> String {
    if formal {
        return "Welcome, \(person)"
    }else{
        return "Hi, \(person)"
    }
}

greet("esse", formal: true)

//20:38 Handling errors in functions
enum PassswordError: Error {
    case short, obivious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PassswordError.short
    }
    if password == "12345" {
        throw PassswordError.obivious
    }
    if password.count < 10 {
        return "ok"
    }else{
        return "Good"
    }
}

do {
    let result = try checkPassword("12345")
    print("Rating: \(result)")
}catch PassswordError.obivious {
    print("I have the same combination on my luggage! ")
} catch {
    print("There was an error.")
}


//22:46 Closures
    // a closure is a func in assigned to a varaibale
let sayHello = {
    print("Hi there")
}
sayHello()

 // add params
let sayHello2 = { (name: String) -> String in
    "Hi, \(name)"
}

let teams3 = ["Gloria", "Suzanne", "Suzane", "Assa"]

let onlyT = teams3.filter( {(name: String ) -> Bool in
    return name.hasPrefix("I")
})

//25:02 Trailing closures and shorthand syntax
let onlyShord = teams3.filter{ name in
    name.hasPrefix("I")
}
//or
let onlyShorted = teams3.filter{
    $0.hasPrefix("I")
}


//26:22 Structs
  // struc let us make our proper data type

struct Album {
    let title: String
    let artist: String
    var isReleased = true
    
    func printSummary(){
        print("Artist \(title) by \(artist)")
    }
    
    //mark method by mutating allow to change attributs name
    mutating func removeFormSale() {
        isReleased = false
    }
}

var red = Album(title: "Red", artist: "Taylor Swift" )
red.printSummary()
red.removeFormSale()

//27:43 Computed properties

struct Employee {
    let name: String
    var vacationAllowed = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllowed - vacationTaken
        }
        
        set {
            vacationAllowed = vacationTaken + newValue
        }
    }
    
}

var esse = Employee(name: "Esse Jacques")
esse.vacationRemaining
esse.vacationRemaining += 3
esse.vacationRemaining


//28:37 Property observers
//allow to observe an attrubut of our struc
struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game  = Game()
game.score += 10
game.score -= 3

//29:16 Custom initializers
struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        self.number = 0
    }
}

//30:10 Access control
  //private set : nothind beside the struct override it
  //Private file set :
  //public

struct BankAccount {
    private(set) var funds  = 0
    
    mutating func desposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        }
        return false
    }
}
  
//31:56 Static properties and methods
struct AppData {
    static let version = "1.3 beta 2"
}

print(AppData.version)

//32:42 Classes
  /*
   class are like struc but have 5 difference
    1 - class can be extends or herited
    2 - Swift will never created u an initialisation If class have not init, it will use the parent
    3 - class are refence type or struct is value
    4 - classe can have a diinit
    5 - classe can change instance values even they are const
   */

//case 1
class Employee2 {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee2 {
    func work() {
        print("I'm coding for \(hours)hours a day.")
    }
    
    override func printSummary() {
        
    }
}

//case 2
class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
    
}


class Car: Vehicle {
    
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool)  {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

//case 3
class Actor {
    var name = "Morgan freeman"
    init(name: String = "Morgan freeman") {
        self.name = name
    }
}


var actor1 =  Actor()
var actor2 = actor1
actor2.name = "Hello Freeman"
print(actor1.name)
print(actor2.name)

//case 4: deiniy
class Site {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("Site \(id): I've been created")
    }
    
    deinit {
        print("Site \(id): I've been destroyed")
    }
}

for i in 1...3 {
    let site = Site(id: i)
}

//case 5
class Singer {
    var name  =  "Adule"
    init(name: String = "Adule") {
        self.name = name
    }
}
let singer = Singer()
singer.name = "Justin"
print(singer.name)


//39:49 Protocols
  //protocol are like interface in java :
  //protocol are rules that class/struct that extends them must follow: in our case methode
  //

protocol House {
    func estimateTime(for distance: Int ) -> Int
    func travel(distance: Int)
}

struct Vila: House {
    func estimateTime(for distance: Int ) -> Int {
        distance / 50
    }
    func travel(distance: Int) {
        print("I'm driving \(distance) km")
    }
    
    func openSunroof(){
        print("It's a nice day")
    }
}



//43:49 Extensions
  //extension are used to add custom functionnalities an exitng type
extension String {
    func trimmed() ->  String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    //can mutate an existing
    mutating func trim() {
        self = self.trimmed()
    }
    
    // can add new properties
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

var quote = "     The truth is rarely pure and new simple     "
let trimmed = quote.trimmed()

let lyrics = """
Je vois le monde en noir
Toi tu vois le monde en blanc
Va donner ton anmour au autre
Mauais, je crois je suis mauvaus
"""

print(lyrics.lines)

//46:00 Protocol extensions
  //protocol extension let us add customs fonctionnalites

//eg: let add a
extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

//49:31 Optionals
//to desclare it, add ? and the end of the type
let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

//wont be executed because need to be handle
let peachOpposite = opposites["Peach"]

//will be executed
if let marioOpposite  = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

//49:31 Unwrapping optionals with guard
func printSquare(of number: Int?) {
    guard let number = number else {
        print("MIssing values")
        return  0
    }
    print("\(number) x \(number) is \(number * number)")
    
}
//51:34 Nil coalescing
let tvShows = ["Archver", "BabyLon 5"]
let favorite = tvShows.randomElement() ?? "None"


//53:06 Optional chaining
print("Next is line: \(tvShows.randomElement() ?? "None")")
//54:09 Optional try?
enum UserError:Error {
    case badID, neworkFailed
}

func getUser(id: Int ) throws -> String {
    throw UserError.neworkFailed
}

if let user = try ? getUser(id: 23) {
    print("User \(user)")
}
//55:37 Wrap up

//56:52 Dog reward
