//
//  NotExistingNumSum.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/04/27.
//

import Foundation

var input = [1,2,3,4,6,7,8,0]

func solution(_ numbers:[Int]) -> Int {
    var sum = 0
    for i in 0 ..< 10 {
        if !numbers.contains(i){
            sum += i
        }
    }
    return sum
}

print(solution(input))
