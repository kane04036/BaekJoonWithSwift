//
//  11651.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/04/14.
//

import Foundation

let loopNum = Int(readLine()!)!
var coordiArray:[(Int, Int)] = [] //좌표로 저장

for _ in 0 ..< loopNum{
    let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
    coordiArray.append((input[0],input[1]))
}

coordiArray.sort(by: {
    $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1
})
//sort 활용해서 정렬하기
//이중 삼항 연산자 활용

coordiArray.forEach {print("\($0.0) \($0.1)")}
