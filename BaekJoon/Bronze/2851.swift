//
//  2851.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/02/21.
//

import Foundation

var inputArray:Array<Int> = []
var sum = 0
for i in 0 ..< 10 {
    let input = Int(readLine()!)!
    if input < 1 || input > 100 {
        exit(1)
    }
    inputArray.append(input)
}

for i in 0 ..< 10 {
    sum += inputArray[i]
    if sum > 100 {
        let num1 = abs(100 - sum)
        let num2 = abs(100 - (sum - inputArray[i]))
        num1 > num2 ? print(sum - inputArray[i]) : print(sum)
        break
    }else if i == 9{
        print(sum)
    }
}
