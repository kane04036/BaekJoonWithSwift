//
//  main.swift
//  BaekJoonWithSwift
//
//  Created by 제임스 on 2022/11/11.
//

import Foundation
var input = readLine()?.components(separatedBy: " ")
var numX = Int(String(input![0].reversed()))
var numY = Int(String(input![1].reversed()))
if numX! < 1 || numX! > 1000 || numY! > 1000 || numY! < 1{exit(1)}
var result = Int(String(String(numX! + numY!).reversed()))
print(result!)
