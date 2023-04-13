//
//  11651.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/04/14.
//

import Foundation

let loopNum = Int(readLine()!)!
var coordiArray:[[Int]] = []
var index = 0
var min = 0
for _ in 0 ..< loopNum{
    coordiArray.append(readLine()!.components(separatedBy: " ").map{Int($0)!})
}

for i in 0 ..< coordiArray.count{
    min = coordiArray[i][1]
    index = i
    for j in i ..< coordiArray.count{
        if min > coordiArray[j][1]{
            min = coordiArray[j][1]
            index = j
        }else if min == coordiArray[j][1]{
            index = coordiArray[index][0] > coordiArray[j][0] ? j : index
        }
    }
    
    let temp:[Int] = coordiArray[i]
    coordiArray[i] = coordiArray[index]
    coordiArray[index] = temp
    print("\(coordiArray[i][0]) \(coordiArray[i][1])")
}
