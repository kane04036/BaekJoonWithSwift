//
//  2163.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/02/21.
//

import Foundation
let input  = readLine()!.components(separatedBy: " ").map{Int($0)}
let num1 = input[0]!
let num2 = input[1]!

if num1 < 1 || num1 > 300 || num2 < 1 || num2 > 300 {
    exit(1)
}

let result = (num1*num2) - 1
print(result)
