//
//  main.swift
//  BaekJoonWithSwift
//
//  Created by 제임스 on 2022/11/11.
//

import Foundation
let inputArray = readLine()!.components(separatedBy: " ").map {Int(String($0))}
var count:Int = 0
var sum:Int = 0
let height = inputArray[2]!
let num = inputArray[0]! - inputArray[1]!
if (height % num) == (height/num){
    print(height/num)
}else{
    print(height%num)
}
