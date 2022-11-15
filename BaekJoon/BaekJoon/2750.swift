//
//  2750.swift
//  BaekJoon
//
//  Created by 제임스 on 2022/11/16.
//

import Foundation

let loopNum = Int(readLine()!)
var inputArray:Array<Int> = []
var temp:Int

if loopNum!<1 || loopNum!>1000{
    exit(1)
}

for _ in 0..<loopNum!{
    let inputNum = Int(readLine()!)
    if (inputNum?.magnitude)! > 1000{
        exit(1)
    }
    inputArray.append(inputNum!)
}
for i in inputArray.indices{
    var j = i+1
    while(j < inputArray.count){
        if inputArray[i] == inputArray[j]{
            exit(1)
        }else if inputArray[i] > inputArray[j]{
            temp = inputArray[i]
            inputArray[i] = inputArray[j]
            inputArray[j] = temp
        }
        j=j+1
    }
    print(inputArray[i])
}
