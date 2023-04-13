//
//  4673:f.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/04/12.
//

import Foundation

var noneSelfNum:[Int] = []
var selfNum:[Int] = []


for i in 1 ..< 10000 {
    var num = i
    var numCount = Double(String(i).count)
    var squareNum = Int(pow(10.0, numCount))
    for j in 0 ..< String(i).count{
        num += (num%squareNum)/(squareNum/10)
        squareNum/=10
    }
    if num >= 10000{
        break
    }
    noneSelfNum.append(num)
}

print(noneSelfNum)

for i in 0 ..< 10000{
    if !noneSelfNum.contains(i){
        print(i)
    }
}
