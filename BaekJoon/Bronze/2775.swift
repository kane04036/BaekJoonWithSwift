//
//  main.swift
//  BaekJoonWithSwift
//
//  Created by 제임스 on 2022/11/11.
//

import Foundation

let T = Int(readLine()!)
var Karray : Array<Int> = []
var Narray : Array<Int> = []
var maxK:Int = 0, maxN:Int = 0

for i in 0..<T!{
    Karray.append(Int(readLine()!)!)
    Narray.append(Int(readLine()!)!)
    if Karray[i]<0 || Narray[i]>15{
        exit(1)
    }
    if Karray[i] > maxK{
        maxK = Karray[i]
    }
    if Narray[i] > maxN{
        maxN = Narray[i]
    }
}

var peopleInFloorArray : [[Int]] = Array(repeating: Array(repeating: 0, count: maxN+1), count: maxK+1)

for j in 0...maxK{
    for k in 1...maxN{
        if j == 0{
            peopleInFloorArray[j][k] = k
            continue
        }
        for n in 1...k{
            peopleInFloorArray[j][k] =  peopleInFloorArray[j][k] + peopleInFloorArray[j-1][n]
        }
    }
}

for i in 0..<T!{
    let k = Karray[i]
    let n = Narray[i]
    print(peopleInFloorArray[k][n])
}

//이렇게 max, min구하지 말고 그냥 15층까지 다 구해버린가음데

