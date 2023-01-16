//
//  1436.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/01/17.
//

import Foundation
//1436
//아니 맞았는데 스위프트가 느려서 계속 시간초과남. 유독 스위프트 정답비율이 낮을 걸 봐서 언어 특성인듯 ㅜㅜ 포기!!
let input = Int(readLine()!)
if input! < 1 || input! > 10000{
    exit(1)
}
var num:Int = 666
var count:Int = 0
while(true){
    if String(num).contains("666"){
        count += 1
        if count == input{
            print(num)
            break
        }
    }
    num += 1
}
