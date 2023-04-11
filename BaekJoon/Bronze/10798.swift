//
//  10798.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/03/02.
//

import Foundation

var wordArray:[String] = []
var maxCount = 0
for _ in 0 ..< 5{
    let input = readLine()!
    let count = input.count
    if count < 1 || count > 15 {
        exit(1)
    }
    wordArray.append(input)
    if count > maxCount {
        maxCount = count
    }
}

for i in 0 ..< maxCount{
    for j in wordArray{
        if j.count-1 < i{
            continue
        }
        print(Array(j)[i], terminator: "")
    }
}
