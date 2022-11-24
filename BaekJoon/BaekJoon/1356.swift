//
//  1356.swift
//  BaekJoon
//
//  Created by 제임스 on 2022/11/24.
//

import Foundation
let input = Array(readLine()!)
if Int(String(input))! > 2147483647 || Int(String(input))! < 1{
    exit(1)
}
if input.count == 1{
    print("NO")
    exit(0)
}

for i in 1 ... input.count{
    var firstArray:Array<Int> = []
    var secondArray:Array<Int> = []
    var sumA = 1, sumB = 1
    for j in 0 ..< input.count{
        if j < i && j != input.count-1{
            firstArray.append(Int(String(input[j]))!)
        }else{
            secondArray.append(Int(String(input[j]))!)
        }
    }
    firstArray.forEach {sumA *= $0}
    secondArray.forEach {sumB *= $0}
    if sumA == sumB{
        print("YES")
        exit(0)
    }
}
print("NO")
