//
//  2751.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/04/14.
//

import Foundation

let loopNum = Int(readLine()!)!
var numArray:[Int] = []

for _ in 0 ..< loopNum{
    numArray.append(Int(readLine()!)!)
}
numArray.sort()
numArray.forEach {print($0)}
