//
//  4344.swift
//  BaekJoon
//
//  Created by 제임스 on 2022/11/25.
//

import Foundation
let testCase = Int(readLine()!)
var resultArray:Array<String> = []

for _ in 0 ..< testCase!{
    var input = readLine()!.components(separatedBy: " ").map {Int(String($0))}
    let peopleNum = input[0]
    if peopleNum! > 1000 || peopleNum! < 1{
        exit(1)
    }
    input.remove(at: 0)
    var sum:Int = 0
    var count:Int = 0
    input.forEach{sum += $0!}
    let average:Int = sum / peopleNum!
    input.forEach {if $0! > average{
        count += 1
    }}
    resultArray.append(String(format: "%.3f", (Double(count)/Double(peopleNum!) * 100)))
}
resultArray.forEach {print("\($0)%")}
