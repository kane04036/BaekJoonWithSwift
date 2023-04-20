//
//  babbling.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/04/18.
//

import Foundation

var arr:[String] = ["ayaye", "uuuma", "ye", "yemawoo", "ayaa","wowooo"]
let correctBabbling:[String] =  ["aya", "ye", "woo", "ma"]
var count:Int = 0

func solution(_ babbling:[String]) -> Int {

    for i in babbling{
        var word = i
        for j in correctBabbling{
            if word.contains(j){
                word = word.replacingOccurrences(of: j, with: " ")
            }
        }
        if word.replacingOccurrences(of: " ", with: "").count == 0 {
            count += 1
        }
    }
    
    return count
}

print(solution(arr))
