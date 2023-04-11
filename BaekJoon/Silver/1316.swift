//
//  1316.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/04/12.
//

import Foundation

let wordNum = Int(readLine()!)!
var wordArray:[String] = []
var compareChar:Character = " "
var notGroupNum = 0
var count = 0
for _ in 0 ..< wordNum{
    let input = Array(readLine()!)
    var existArray:[Character] = []
    count = 0
    for i in input{
        if !existArray.contains(i){
            existArray.append(i)
            count += 1
        }else{
            if i == compareChar{
                count += 1
            }else{
                notGroupNum += 1
                break
            }
        }
        compareChar = i
    }
    existArray.removeAll()
    compareChar = " "
}
print(wordNum - notGroupNum)
