//
//  2908.swift
//  BaekJoon
//
//  Created by 제임스 on 2022/11/17.
//

import Foundation

var inputArray = readLine()!.components(separatedBy: " ")
if inputArray[0].count != 3 || inputArray[1].count != 3{
    exit(1)
}
var num1 = Int(String(inputArray[0].reversed()))
var num2 = Int(String(inputArray[1].reversed()))

if num1! > num2!{
    print()
}
else{
    print(num2!)
}
