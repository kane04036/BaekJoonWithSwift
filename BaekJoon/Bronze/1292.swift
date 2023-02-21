//
//  1292.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/02/21.
//

import Foundation
let inputArray = readLine()!.components(separatedBy: " ").map{Int($0)}
if inputArray[0]! < 0 || inputArray[0]! > 1000 || inputArray[1]! < 0 || inputArray[1]! > 1000 {
    exit(1)
}
var numArray:Array<Int> = []
var count = 0
var sum = 0

for i in 1 ... 46{
    for j in 0 ..< i{
        numArray.append(i)
    }
}

for i in inputArray[0]!-1 ... inputArray[1]!-1 {
    sum += numArray[i]
}

print(sum)
