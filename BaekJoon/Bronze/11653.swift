//
//  11653.swift
//  BaekJoon
//
//  Created by 제임스 on 2022/12/02.
//

import Foundation
var input = Int(readLine()!)!
var resultArray:Array<Int> = []
if input > 10000000 || input < 1{exit(1)}
else if input == 1 {exit(0)}
else{
    for i in 2...input{
        while(true){
            if input % i == 0{
                resultArray.append(i)
                input /= i
            }else {break}
        }
        if input == 1{
            break
        }
    }
}
resultArray.forEach{print($0)}
