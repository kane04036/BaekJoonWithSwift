//
//  2309.swift
//  BaekJoon
//
//  Created by 제임스 on 2022/12/01.
//

import Foundation
var inputArray:Array<Int> = []
var sum:Int = 0
var isEnd:Bool=false
for _ in 0 ..< 9{
    let input = Int(readLine()!)
    if input! > 100 || input! < 1{
        exit(1)
    }
    inputArray.append(input!)
    sum += input!
}

for i in 0..<inputArray.count{
    sum -= inputArray[i]
    for j in 0..<inputArray.count{
        if i == j{
            continue
        }
        sum = sum - inputArray[j]
        if sum == 100{
            let num1 = inputArray[i]
            let num2 = inputArray[j]
            inputArray.removeAll(where: {$0 == num1})
            inputArray.removeAll(where: {$0 == num2})
            isEnd = true
            break
        }else{
            sum += inputArray[j]
        }
    }
    if isEnd{break}else{sum+=inputArray[i]}
}
inputArray.sort()
inputArray.forEach{print($0)}
