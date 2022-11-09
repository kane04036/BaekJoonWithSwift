//
//  main.swift
//  AlgorithmWithSwift
//
//  Created by 제임스 on 2022/11/09.
//

import Foundation

let input = Int(readLine()!)
var numArray : Array<String> = []
var resultArray : Array<Int> = []
var num1 : Int, num2 : Int
var result : Int = 1

for _ in 0..<input!{
    result = 1
    if let inputNum = readLine(){
        numArray = inputNum.components(separatedBy: " ")
        numArray.removeAll(where: {$0 == ""})
        num1 = Int(numArray[0])!
        num2 = Int(numArray[1])!
        if (num1 < 0 || num1 > 100) || (num2 < 0 || num2 > 10000000){
            exit(1)
        }
        num1 = num1%10
        switch(num1){
        case 0:
            result = 0
        case 1,5,6:
            result = num1
            break
        case 4,9:
            if (num2%2) == 1{
                result = num1
            }else{
                result = (num1*num1)%10
            }
            break
        default:
            switch(num2%4){
            case 1:
                result = num1
                break
            case 2:
                result = (num1*num1)%10
                break
            case 3:
                result = (num1*num1*num1)%10
            default:
                result = (num1*num1*num1*num1)%10
                
            }
            break
        }
    }
    if (result) == 0{
        resultArray.append(10)
        continue
    }
    resultArray.append(result)
}
for i in resultArray{
    print(i)
}

