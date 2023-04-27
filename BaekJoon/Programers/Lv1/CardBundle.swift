//
//  CardBundle.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/04/28.
//

import Foundation

let input1:[String] = ["i", "water", "drink"]
let input2:[String] = ["want", "to"]
let goal:[String] = ["i", "want", "to", "drink", "water"]

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var cards1 = cards1
    var cards2 = cards2
    for i in 0 ..< goal.count{
        
        if !cards1.isEmpty && goal[i] == cards1[0] {
            cards1.remove(at: 0)
        }else if !cards2.isEmpty && goal[i] == cards2[0] {
            cards2.remove(at: 0)
        }else{
            return "No"
        }
    }
    return "Yes"
}

print(solution(input1, input2, goal))
