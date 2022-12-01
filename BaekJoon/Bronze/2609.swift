//
//  2609.swift
//  BaekJoon
//
//  Created by 제임스 on 2022/12/01.
//

import Foundation
let inputNumArray = readLine()!.components(separatedBy: " ").map { item in
    Int(item)
}
inputNumArray.forEach { num in
    if num! < 1 || num! > 10000{
        exit(1)
    }
}
var commonFactor:Int?
var commonMultiple:Int?

for i in (1...inputNumArray[0]!).reversed(){
    if inputNumArray[0]! % i == 0 && inputNumArray[1]! % i == 0{
        commonFactor = i
        commonMultiple = i * (inputNumArray[0]!/i) * (inputNumArray[1]!/i)
        break
    }
}
print("\(commonFactor!)\n\(commonMultiple!)")
