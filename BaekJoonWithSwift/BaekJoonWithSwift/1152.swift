//
//  1152.swift
//  BaekJoon_Swift
//
//  Created by 제임스 on 2022/11/04.
//

import Foundation

var line = readLine()!
var array : Array<String> = line.components(separatedBy: " ")

array.removeAll(where: {$0 == ""})
print(array.count)

