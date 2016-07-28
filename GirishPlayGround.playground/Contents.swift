//: Playground - noun: a place where people can play

import UIKit
import Foundation

var varName = "Hello, Girish"
varName += " Wasssup"
var newVar = varName.lowercaseString
print(varName)
print(newVar)

var age:Int32 = 16

let cont: String = "45"
//cont = "t"

//String Interpolation

var gk = " hi \(newVar)"

var g = 1.77
var g1:Float = 1.77

var g2:Bool = g == g
var g3:Bool = g1 == g1

var a = 1
var b = 1

if a == b && b != 1 { print("a bb") } else { print ("b")}
    
var middleName: String!

middleName = nil
print("Middle name: \(middleName).")

var MyArray : Array<String> = [ " 1 ", "2"]

var MyArr : Array<String>

var MyArrt : [String] = [ " 1 ", "2"]

let first = MyArrt[0]


var fruit: Dictionary<String, String> = ["Id" : "00001", "Name" : "Dragonfruit", "Color" : "Pink"]


//var color = fruit["Color"]

fruit["Color"] = "etf"


let somedict = Dictionary<String, Int>()
let somedict1:Dictionary<String, Int>?
let somedict2:[String: Int]?



var a1 : Int = 1002

var b1 : Int = 1000

func functionA()
    
{
    
    if a1 > b1 {
        
        print("A is greater than B.")
        
    }
    
}

//let resultA = functionA()

func functionB(a: Int, b: Int) -> Bool
    
{
    
    if a1 > b1 {
        
        return true
        
    }
    
    return false
    
}

let resultB = functionB(a, b: b)


var solarSystem: [String] = ["mercury", "venus"]

solarSystem += ["fuck"]

var animalArray = [String]()
var animalArray1 = Array<String>()








