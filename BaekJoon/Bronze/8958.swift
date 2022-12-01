//
//  8958.swift
//  BaekJoon
//
//  Created by 제임스 on 2022/11/14.
//

import Foundation
let testCase = Int(readLine()!)
var resultArray:Array<Int> = []
var sum:Int = 0;
var count:Int = 0;


for _ in 0..<testCase!{
    count = 0
    sum = 0
    let stringArray = Array(readLine()!)
    for i in stringArray{
        if i == "O"{
            count=count+1
            sum = sum + count
        }else{
            count = 0
        }
    }
    resultArray.append(sum)
}
for i in resultArray{
    print(i)
}
