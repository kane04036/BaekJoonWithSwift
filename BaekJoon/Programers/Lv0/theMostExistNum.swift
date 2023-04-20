//
//  theMostExistNum.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/04/21.
//

import Foundation

var arr:[Int] = [1,1,2,2]

func solution(_ array:[Int]) -> Int {
    var result = 0
    var num = -1
    var output = 0
    let array = array.sorted()
    
    for i in array where i != num{
        
        let firstIndex = Int(array.firstIndex(of: i)!)
        let lastIndex = Int(array.lastIndex(of: i)!)
        let gap = lastIndex - firstIndex + 1

        if gap > result {
            result = gap
            output = i
        }else if gap == result {
            result = gap
            output = -1
        }
        
        num = i
    }
    return output
}

print(solution(arr))
