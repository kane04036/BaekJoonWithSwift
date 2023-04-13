//
//  7568.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/04/14.
//

import Foundation

let loopNum = Int(readLine()!)!
var array:[(Int, Int)] = []
//var sortedArray:[(Int, Int)] = []
var scoreArray = Array(repeating: 0, count: loopNum)
var rank = 1
for _ in 0 ..< loopNum{
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    array.append((input[0], input[1]))
}
let pair:(Int,Int) = (0,0)

//sortedArray = array.sorted(by: {
//    $0.0 > $1.0 && $0.1 > $1.1
//})
//
//for i in 0 ..< array.count {
//    for j in 0 ..< array.count{
//        if sortedArray[i].0 <= array[j].0 || sortedArray[i].1 <= array[j].1{
//            scoreArray.remove(at: j)
//            scoreArray.insert(i, at: j)
//        }
//    }
//}
//
//
//print(scoreArray)

for i in array {
    for j in array {
        if i.0 > pair.0 || i.1 > pair.1 {
            
        }
    }
    
}
