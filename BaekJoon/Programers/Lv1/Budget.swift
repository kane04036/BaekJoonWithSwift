//
//  Budget.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/04/27.
//

import Foundation

let input = [1,3,2,5,4]
let budget = 9

func solution(_ d:[Int], _ budget:Int) -> Int {
    let arr = d.sorted(by: <)
    var budget = budget
    var count = 0
    for i in arr {
        budget -= i
        if budget < 0 {
            break
        }
        count += 1
    }
    
    return count
}

print(solution(input, budget))
