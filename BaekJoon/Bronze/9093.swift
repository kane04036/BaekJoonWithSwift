//
//  9093.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/02/21.
//

import Foundation

let input = Int(readLine()!)!
var textArray:Array<String> = []
for i in 0 ..< input{
    textArray.append(readLine()!)
}

for i in textArray {
    let wordArray = i.components(separatedBy: " ")
    for j in wordArray{
        for k in Array(j).reversed(){
            print(k,terminator: "")
        }
        print(" ",terminator: "")
    }
    print("")
}
