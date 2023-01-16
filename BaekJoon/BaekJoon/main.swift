//
//  main.swift
//  BaekJoonWithSwift
//
//  Created by 제임스 on 2022/11/11.
//

import Foundation
let inputArray = readLine()!.components(separatedBy: " ").map {Int($0)}
var matrixA = readLine()!.components(separatedBy: " ").map {Int($0)}
var matrixB = readLine()!.components(separatedBy: " ").map {Int($0)}
if matrixA.count != inputArray[0] || matrixB.count != inputArray[1]{
    exit(1)
}
var result = matrixA + matrixB

for i in 0 ..< result.count{
    for k in 0 ..< result.count{
        if result[i]! < result[k]!{
            let temp = result[i]
            result[i] = result[k]
            result[k] = temp
        }
    }
}
//result.sort {$0! < $1!}
result.forEach {print($0!, terminator: " ")}

