//
//  1032.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/02/21.
//

import Foundation
let loopNum = Int(readLine()!)!

if loopNum < 1 || loopNum > 50 {
    exit(0)
}
var textArray:[String] = []

for i in 0 ..< loopNum{
    let input = readLine()!
    if input.count > 50 {
        exit(0)
    }
    textArray.append(input)
}

for i in 0 ..< textArray[0].count{
    let char = Array(textArray[0])[i]
    var isSame = true
    for k in 0 ..< textArray.count{
        if Array(textArray[k])[i] != char {
            isSame = false
            break
        }
    }
    if isSame{
        print(char, terminator: "")
    }else{
        print("?",terminator: "")
    }
}
