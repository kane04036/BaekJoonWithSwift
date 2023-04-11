//
//  1551.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/03/03.
//

import Foundation

let inputArray = readLine()!.components(separatedBy: " ").map{Int($0)!}
var numArray = readLine()!.components(separatedBy: ",").map{Int($0)!}

if numArray.count != inputArray[0]{
    exit(1)
}

for _ in 0 ..< inputArray[1] {
    for j in 0 ..< numArray.count-1{
        let num = numArray[j+1]-numArray[j]
        numArray.remove(at: j)
        numArray.insert(num, at: j)
    }
    numArray.remove(at: numArray.count-1)
}

for i in 0 ..< numArray.count{
    if i == numArray.count-1 {
        print(numArray[i],terminator: "")
    }else{
        print(numArray[i], terminator: ",")
    }
}
