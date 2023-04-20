//
//  1181_f.swift
//  BaekJoon
//
//  Created by 제임스 on 2023/04/18.
//

import Foundation
//1181
let loopCount = Int(readLine()!)!
var wordArray:[String] = []
for _ in 0 ..< loopCount{
    wordArray.append(readLine()!)
}

for i in 0 ..< wordArray.count{
    let word = wordArray[i]
    for j in i ..< wordArray.count{
        if wordArray[j] == word {
            wordArray.remove(at: j)
        }
    }
}

wordArray.sort(by: {
    $0.count == $1.count ? Array($0)[0] < Array($1)[0] : $0.count < $1.count
})
wordArray.forEach({
    print($0)
})
