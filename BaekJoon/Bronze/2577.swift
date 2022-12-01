//
//  2577.swift
//  BaekJoon
//
//  Created by 제임스 on 2022/11/14.
//

import Foundation

let num1 = Int(readLine()!)
let num2 = Int(readLine()!)
let num3 = Int(readLine()!)
var resultArray = [Int](repeating: 0, count: 10)

let sum = num1!*num2!*num3!

let sumString = Array(String(sum))
for i in sumString{
    let index = Int(i.asciiValue!) - 48
    resultArray[index] = resultArray[index] + 1
}
for i in resultArray{
    print(i)
}
