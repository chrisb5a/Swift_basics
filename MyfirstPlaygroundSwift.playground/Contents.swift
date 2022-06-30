import UIKit

// Hello world function
func helloWorld(){
    let helloWorld = "Hello Baby"
    print(helloWorld)
}

//helloWorld()
 
// var vs let

func varVslet(){
  let constantstring = "This is a constant"
  var mutableString = "This is a mutable String"
  print(constantstring)
  print(mutableString)
  mutableString = "babay"
  print(mutableString)
}
 // varVslet()
//constantstring = "som"
// Basic Data types

func basicDataTypes(){
    var str: String = "str"
    var char: Character = "A"
    var bool: Bool = true
    var int: Int = 9
    var intAlt: Int64 = 23333
    var double: Double = 4.56789
    var float: Float = 3.14
    var arr: [Int] = [1,2, 3, 4, 5]
    var dictionary: [String: Int] = ["one":1 , "two":2]
    var set: Set<String> = Set<String>(arrayLiteral:"one","two", "three")
}

// Intro to Optional
// reference vs value type Null vs nil
func IntroToOptional(){
    
    let constOpt: Int?
    var mutableOpt: String?
    print(mutableOpt)
    mutableOpt = "ssad"
    constOpt = 0
    mutableOpt = nil
    print(mutableOpt)
}


class Myclass{
    var myStr: String
    var myBool: Bool
    var myArr: [Int]  = [1,2,3]
    var myChar: Character?
    
    init (str: String, bool: Bool){
        self.myStr =  str
        self.myBool = bool
    }
    func printV(){
        print("arr: \(self.myArr)")
    }
    func printOV(){
        print(self.myStr)
        print(self.myBool)
        print(self.myChar)
    }
}

let  example = Myclass(str:"assd", bool: true)
//example.printOV()
//example.printV()

// Access levels
// FilePrivate - Can access element in the same file
// Private - Only accessible in object itself
// Internal - default, only accessible in the same bundle
// Public - It is accessible outside bundle
// Open - Everything public but allows subclkassing and overriding



struct MyStruct{
    
    var myStr: String
    var myBool: Bool
    var myArr: [Int]  = [1,2,3]
    var myChar: Character?
    
    init (str: String, bool: Bool){
        self.myStr =  str
        self.myBool = bool
    }
    func printV(){
        print("arr: \(self.myArr)")
    }
    func printOV(){
        print(self.myStr)
        print(self.myBool)
        print(self.myChar)
    }
}

var ex = MyStruct(str:"assd", bool: true)
//ex.printOV()
//ex.printV()


func ClassVsStruct(){
    let myClass = Myclass(str:"assd", bool: true)
    myClass.myStr = "bbbb"
    
    var myStruct = MyStruct(str:"assd", bool: true)
    myStruct.myStr = "bbb1"
    
    // copy on Write
    
    let otherClass = myClass
    otherClass.myStr = "Ooooo"
    print(myClass.myStr)
    print(otherClass.myStr)
    
    var otherStruct = myStruct
    otherStruct.myStr = "No allowed"
    print(myStruct.myStr)
    print(otherStruct.myStr)
    
}

//ClassVsStruct()

// Pass by value vs pass by reference

func doIt(param: Int)-> Int{
    let s = param + 2
    return s
}

func doIt2(param: inout Int)-> Int{
    param += 2
    return param
}
var num  = 5
let result1 = doIt(param: 5)
//print(num)
//print(result1)


//let result2 = doIt2(param: &num)
//print(num)
//print(result2)


// Enums
enum MyEnum {
    case north
    case south
    case east
    case west
    
    var example: Int {
        return add(lhs:2, rhs:2)    }
    
    func add(lhs:Int, rhs:Int)-> Int{
        return lhs + rhs
    }
}

func enumCheck(){
    let e = MyEnum.north
    let e2 = MyEnum.west
    
    print(e)
    print(e2)
    
}

//enumCheck()

func Guessing(a: Int){
    if a == 1
        {print("Bad Choice")}
    else
        {print("great Choice")}
            }

let nums = 1

Guessing(a: nums)

