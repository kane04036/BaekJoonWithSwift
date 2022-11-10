//
//  main.swift
//  BaekJoonWithSwift
//
//  Created by 제임스 on 2022/11/11.
//

import Foundation

let input = readLine()!.components(separatedBy: " ")
let numArray = input.map {Int(String($0))}

guard let N = numArray[0] else {exit(1)}
guard let L = numArray[1] else {exit(1)}
guard let D = numArray[2] else {exit(1)}
var sumL:Int = 0, sumD:Int = 0

if N<1 || N>20 || L<1 || L>180 || D<1 || D>20{
    exit(1)
}

for _ in 0..<N{
    sumL = sumL+L
    while((sumD+D) < (sumL+5)){
        sumD = sumD + D
        if sumD >= sumL && sumD < sumL+5{
            print(sumD)
            exit(0)
        }
    }
    sumL = sumL+5
}
while(true){
    if sumD > sumL-5{
        print(sumD)
        break
    }else{
        sumD = sumD + D
    }
}


