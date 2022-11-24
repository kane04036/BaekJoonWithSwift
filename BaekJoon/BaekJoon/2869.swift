//
//  2869.swift
//  BaekJoon
//
//  Created by 제임스 on 2022/11/24.
//

import Foundation
let inputArray = readLine()!.components(separatedBy: " ").map {Int(String($0))}
let V = inputArray[2]!
let A = inputArray[0]!
let B = inputArray[1]!
var sum:Int = V
var count:Int = 0
//if height%num == 0{
//    print((height/num)-1)
//}else{
//    print(height/num+1)
//}

while(true){
    count += sum/A
    sum -= B*count
    if sum <= A{
        print(count+1)
        break
    }
}
