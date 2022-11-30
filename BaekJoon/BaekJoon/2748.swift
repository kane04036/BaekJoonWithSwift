//
//  2748.swift
//  BaekJoon
//
//  Created by 제임스 on 2022/12/01.
//

import Foundation
let index = Int(readLine()!)!
if index < 1 || index > 90{exit(1)}
var fibonacciArray:Array<UInt64> = [0,1]
if index>1{
    for i in 2...index{
        fibonacciArray.append(fibonacciArray[i-1]+fibonacciArray[i-2])
    }
}
print(fibonacciArray[index])
