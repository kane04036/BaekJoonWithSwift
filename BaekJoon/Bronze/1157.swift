//
//  1157.swift
//  BaekJoon
//
//  Created by 제임스 on 2022/11/22.
//

import Foundation
let SUB_VALUE = 65
var input = readLine()!.uppercased()
var resultArray = [Int](repeating: 0, count: 26)
var frequentWord:Character?
var max:Int = 0

if input.count > 1000000{
    exit(1)
}
for i in Array(input){
    let index = Int(i.asciiValue!) - SUB_VALUE
    resultArray[index] = resultArray[index] + 1
}
for i in resultArray.indices{
    if resultArray[i] > max{
        max = resultArray[i]
        frequentWord = Character(UnicodeScalar(i+SUB_VALUE)!)
    }
}
if resultArray.firstIndex(of: max) == resultArray.lastIndex(of: max){
    print(frequentWord!)
}else{
    print("?")
}
