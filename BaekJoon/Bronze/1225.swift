//
//  main.swift
//  BaekJoonWithSwift
//
//  Created by 제임스 on 2022/11/10.
//

import Foundation
var result : Int = 0
let input = readLine()!.components(separatedBy: " ")
let numArray1 = Array(input[0]).map {Int(String($0))}
let numArray2 = Array(input[1]).map {Int(String($0))}

for i in numArray1{
    for j in numArray2{
        result = result + (i! * j!)
    }
}
print(result)
