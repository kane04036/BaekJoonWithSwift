//
//  7568.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/04/14.
//

import Foundation

let loopNum = Int(readLine()!)!
var array:[(Int, Int)] = []
var scoreArray = Array(repeating: 1, count: loopNum)

for _ in 0 ..< loopNum{
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    array.append((input[0], input[1]))
}

for i in 0 ..< loopNum{
    for j in 0 ..< loopNum{
        if array[i].0 < array[j].0 && array[i].1 < array[j].1 {
            scoreArray[i] += 1
        }
    }
}
scoreArray.forEach({
    print($0,terminator: " ")
})
