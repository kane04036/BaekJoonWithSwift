//
//  1259.swift
//  BaekJoon
//
//  Created by 제임스 on 2022/11/23.
//

import Foundation
var resultArray:Array<String> = []
while(true){
    let input = readLine()!
    if Int(input)! > 100000 || Int(input)! < 0{
        exit(1)
    }else if input == "0"{
        break
    }else if input == String(input.reversed()){
        resultArray.append("yes")
    }else{
        resultArray.append("no")
    }
}
resultArray.forEach({print($0)})
