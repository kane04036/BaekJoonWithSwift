//
//  1297.swift
//  BaekJoonWithSwift
//
//  Created by 제임스 on 2022/11/10.
//

import Foundation

let inputArray = readLine()!.components(separatedBy: " ")
let numArray = inputArray.map {Int(String($0))}

guard let D = numArray[0] else {exit(1)}
guard let H = numArray[1] else {exit(1)}
guard let W = numArray[2] else {exit(1)}

if D<5 || D>1000 || H<0 || H>99 || W<2 || W>100 || H>W {
    exit(1)
}

let quotient = sqrt(pow(Double(D), 2.0)/(pow(Double(H), 2.0)+pow(Double(W), 2.0)))
let resultHeight = Int(Double(H)*quotient)
let resultWeight = Int(Double(W)*quotient)

print("\(resultHeight) \(resultWeight)")
