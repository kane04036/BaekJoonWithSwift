//
//  2675.swift
//  BaekJoon_Swift
//
//  Created by 제임스 on 2022/11/03.
//

import Foundation

let numberLine = readLine()!
let loopNum = Int(numberLine)

var numArray :Array<Int>? = []
var strArray :Array<String>? = []
var arr = [Character]()

if loopNum! < 0 || loopNum! > 1000{
    exit(1)
}

for _ in 0..<loopNum!{
    let line = readLine()!
    let lineArray = line.components(separatedBy: " ")
    if Int(lineArray[0])! < 1 || Int(lineArray[0])! > 8{
        exit(1)
    }
    if lineArray[1].count < 1 || lineArray[1].count > 20 {
        exit(1)
    }
    numArray?.append(Int(lineArray[0])!)
    strArray?.append(lineArray[1])
}

for i in 0..<loopNum!{
    for j in (strArray?[i])!{
        for _ in 0..<(numArray?[i])!{
            print(j,terminator: "")
        }
    }
    print("")
}
