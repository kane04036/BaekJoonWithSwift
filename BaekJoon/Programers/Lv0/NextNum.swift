//
//  nextNum.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/04/19.
//

import Foundation

func solution(_ dots:[[Int]]) -> Int {
    let arr1 = dots.map {Double($0[0])}
    let arr2 = dots.map {Double($0[1])}
    
    var resultArr:[Bool] = []
    
    var result1 = (arr1[0] - arr1[1])/(arr2[0]-arr2[1])
    var result2 = (arr1[2] - arr1[3])/(arr2[2]-arr2[3])
    resultArr.append(result1 == result2)
    
    result1 = (arr1[0] - arr1[2])/(arr2[0]-arr2[2])
    result2 = (arr1[1] - arr1[3])/(arr2[1]-arr2[3])
    resultArr.append(result1 == result2)
    
    result1 = (arr1[0] - arr1[3])/(arr2[0]-arr2[3])
    result2 = (arr1[1] - arr1[2])/(arr2[1]-arr2[2])
    resultArr.append(result1 == result2)
    
    return resultArr.contains(true) ? 1 : 0
}
