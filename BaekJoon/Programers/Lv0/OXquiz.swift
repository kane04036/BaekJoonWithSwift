//
//  OXquiz.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/04/21.
//

import Foundation

var arr:[String] = ["19 - 6 = 13", "5 + 66 = 71", "5 - 15 = 63", "3 - 1 = 2"]

func solution(_ quiz:[String]) -> [String] {
    var questionArr:[[String.SubSequence]] = []
    var output:[String] = []

    for i in quiz{
        questionArr.append(i.split(separator: " "))
    }
    
    for i in questionArr{
        let num1 = Int(i[0])!
        let num2 = Int(i[2])!
        let seperator = i[1]
        let result = Int(i[4])
        var realResult = 0
        
        realResult = seperator == "+" ? num1 + num2 : num1 - num2
        
        output.append(realResult == result ? "O" : "X")
        
    }
    return output
}

print(solution(arr))
