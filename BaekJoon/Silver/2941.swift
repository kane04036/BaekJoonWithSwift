//
//  2941.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/01/17.
//

import Foundation
guard var input = readLine() else {exit(1)}

if input.count < 1 || input.count > 100{
    exit(1)
}

var count:Int = 0
var croatiaAlphabet:[String] = ["c=", "c-","dz=","d-","lj","nj","s=","z="]

for alpha in croatiaAlphabet{
    if input.contains(alpha){
        input = input.replacingOccurrences(of: alpha, with: "@")
    }
}
print(input.count)
