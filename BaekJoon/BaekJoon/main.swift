//
//  main.swift
//  BaekJoonWithSwift
//
//  Created by 제임스 on 2022/11/11.
//

import Foundation

let loopNum = Int(readLine()!)
var inputArray:Array<String> = []
var temp:String

if loopNum!<1 || loopNum!>20000{
    exit(1)
}

for _ in 0..<loopNum!{
    let inputString = readLine()!
    if inputString.count > 50{
        exit(1)
    }
    inputArray.append(inputString)
}

for i in 0..<inputArray.count-1{
    var j = i+1
    while(j < inputArray.count){
        if inputArray[i] == inputArray[j]{
            inputArray.remove(at: j)
        }
        else if inputArray[i].count == inputArray[j].count{
            for k in 0..<inputArray[i].count{
                if Int(Array(inputArray[i])[k].asciiValue!) > Int(Array(inputArray[j])[k].asciiValue!){
                    temp = inputArray[i]
                    inputArray[i] = inputArray[j]
                    inputArray[j] = temp
                    break
                }else{
                    break
                }
            }
        }
        else if inputArray[i].count > inputArray[j].count{
            temp = inputArray[i]
            inputArray[i] = inputArray[j]
            inputArray[j] = temp
        }
        j = j+1
    }
}

for i in inputArray{
    print(i)
}



