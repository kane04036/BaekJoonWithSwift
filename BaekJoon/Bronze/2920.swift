//
//  2920.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/01/14.
//

import Foundation
var isAscending = false, isDescending = false
guard let input = readLine() else{exit(1)}
var inputArray = input.components(separatedBy: " ").map {Int($0)}

for i in 0 ..< inputArray.count-1 {
    if inputArray[i]! > inputArray[i+1]!{
        isDescending = true
    }else if inputArray[i]! < inputArray[i+1]!{
        isAscending = true
    }
}

if isAscending && isDescending{
    print("mixed")
}else if isAscending{
    print("ascending")
}else{
    print("descending")
}
