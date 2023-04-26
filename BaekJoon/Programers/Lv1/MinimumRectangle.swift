//
//  MinimumRectangle.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/04/27.
//

import Foundation

let input = [[60, 50], [30, 70], [60, 30], [80, 40]]

func solution(_ sizes:[[Int]]) -> Int {
    var short:[Int] = []
    var long:[Int] = []
    sizes.forEach({
        short.append($0[0] > $0[1] ? $0[1] : $0[0])
        long.append($0[0] > $0[1] ? $0[0] : $0[1])
    })
    
    return short.max()! * long.max()!
}

print(solution(input))

//best answer
func solution(_ sizes:[[Int]]) -> Int {
    var maxNum = 0
    var minNum = 0

    for size in sizes {
        maxNum = max(maxNum, size.max()!)
        minNum = max(minNum, size.min()!)
    }
    return maxNum * minNum
}
