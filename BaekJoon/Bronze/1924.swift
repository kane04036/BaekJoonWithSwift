//
//  1924.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/01/14.
//

import Foundation
var input = readLine()!.components(separatedBy: " ").map {Int($0)}

guard let month:Int = input[0] else{exit(1)}
guard let day:Int = input[1] else{exit(1)}

if month < 1 || month > 12 || day < 1 || day > 31{
    exit(1)
}

let thirtyOneMonth:Array<Int> = [1,3,5,7,8,10,12]
let thiryMonth:[Int] = [4,6,9,11] //이렇게 두가지 방식으로 배열 선언 가능 단축시킨 형태를 더 많이 사용함
var totalDay:Int = 0
for i in 1..<month{
    if thiryMonth.contains(i){
        totalDay += 30
    }else if thirtyOneMonth.contains(i){
        totalDay += 31
    }else{
        totalDay += 28
    }
}

switch((totalDay+day)%7){
case 1:
    print("MON")
    break
case 2:
    print("TUE")
    break
case 3:
    print("WED")
    break
case 4:
    print("THU")
    break
case 5:
    print("FRI")
    break
case 6:
    print("SAT")
    break
case 0:
    print("SUN")
    break
default:
    break
}
