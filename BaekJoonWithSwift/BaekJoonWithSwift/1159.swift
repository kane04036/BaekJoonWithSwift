//
//  main.swift
//  BaekJoonWithSwift
//
//  Created by 제임스 on 2022/11/10.
//

import Foundation

var countArray = [Int](repeating: 0, count: 26)
var peopleNameArray : Array<String> = []
let peopleNum = Int(readLine()!)
var result : String = ""

if peopleNum! < 0 || peopleNum! > 151{
    exit(1)
}
for i in 0..<peopleNum!{
    peopleNameArray.append(readLine()!)
    let ascii = Int(Array(peopleNameArray[i])[0].asciiValue!.description)!
    countArray[ascii-97] = countArray[ascii-97] + 1
}
for i in countArray.indices{
    if countArray[i] >= 5{
        let char = String(UnicodeScalar(i+97)!)
        result.append(char)
    }
}
if result == ""{
    print("PREDAJA")
}
print(result)
