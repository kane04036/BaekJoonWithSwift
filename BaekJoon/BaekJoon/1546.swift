//
//  1546.swift
//  BaekJoon
//
//  Created by 제임스 on 2022/11/23.
//

import Foundation
let testCase = Int(readLine()!)
var max:Double = 0
var sum:Double = 0
var inputArray = readLine()!.components(separatedBy: " ").map{Double(String($0))}
if inputArray.count > testCase! || testCase! > 1000{
    exit(1)
}
for i in inputArray{
    if i! > 100 || i! < 0 {
        exit(1)
    }
    else if i! > max{
        max = i!
    }
}

for i in inputArray{
    sum = sum + (Double(i!/max) * 100.0)
}
print((sum/Double(testCase!)))
