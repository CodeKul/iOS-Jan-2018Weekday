//: Playground - noun: a place where people can play

import UIKit

//Strings

var str1 = "Codekul"

str1 = str1.uppercased()

var str2 = "The Gurukul for Coders!"

var str3 = "Implementation is more importatnt than learning!"

var str4 = str1 + "-" + str2 + "\n" + str3

var str5 = "iOS"

var str6 = "Batch name is: \(str5)"

print(str4)

for ch in str1.reversed() {
    print(ch)
}

// Arrays

var arr1 = [1,2,3,4,5,6,7,8,9]

var arr2 : [Int]

arr2 = [10,20,30,40,50]

var arr3 = arr1 + arr2

var sum = 0

for (index, value) in arr2.enumerated() {
    sum += value
    
    print("\(index)) value: \(value)")
}

var arr4 = [10.30, 20.67]

arr4.append(50)

print(sum)


// Sets

var set1 = Set<Character>()
set1 = ["A", "B", "C", "D", "E", "J"]

var set2 = Set<Character>()
set2 = ["D", "E", "F", "G", "H", "I"]

set1.intersection(set2)

set1.union(set2)

set1.symmetricDifference(set2)

set1.subtracting(set2)

set2.subtracting(set1)

var set3 = Set([1,2,3,4,5,6])

//set1.intersection(set3)

// Dictionaries

var dict1 = ["name" : "Codekul", "address" : "Pune", "phone" : 1234567890] as [String : Any]

dict1["name"]
dict1["address"]
dict1["phone"]
dict1["branch1"] = "Nal stop"

print(dict1)

var dict2 = ["arr1" : arr1]

var dict3 = [1 : dict1]

dict3[1]


