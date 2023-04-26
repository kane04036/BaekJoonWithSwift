//
//  main.swift
//  BaekJoonWithSwift
//
//  Created by 제임스 on 2022/11/11.
//
import Foundation

var input = 12

func solution(_ x:Int) -> Bool {
    var sum = 0
    var num = String(x)
    Array(num).forEach({sum += Int(String($0))!})
    return x % sum  == 0 ? true : false
}

print(solution(input))
