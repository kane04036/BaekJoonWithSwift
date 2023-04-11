//
//  2846.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/03/03.
//

import Foundation

let input = Int(readLine()!)!
let numArray = readLine()!.components(separatedBy: " ").map {Int($0)!}

if input != numArray.count{
    exit(1)
}

var minNum = numArray[0]
var maxNum = numArray[0]
var gap = 0

for i in numArray {

    if i > maxNum {
        maxNum = i
        if (maxNum - minNum) > gap {
            gap = maxNum - minNum
        }
    }else if i <= maxNum{
        minNum = i
        maxNum = i
    }
}

print(gap)
