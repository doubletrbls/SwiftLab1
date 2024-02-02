//
//  task2.swift
//  lab1
//
//  Created by Sarvar Saidazov on 01.02.2024.
//

import Foundation


func task2() {
    print("1)Input First line: ")
    let firstInput = readLine()
    print("Input Second line: ")
    let secondInput = readLine()
    
    let combinedString = firstInput!.appending(secondInput!);
    print("result of concat")
    print(combinedString)
    
    print("2)Input line for reversing")
    let stringForReverse = readLine()
    let reversedString = String(stringForReverse!.reversed())
    print("Reversed string:")
    print(reversedString)
    
    print("3)Input line for count")
    let stringCounter = readLine()
    let stringWithoutSpace = stringCounter?.filter {$0 != " "}
    print("Lentgh wothout spaces: ")
    print(stringWithoutSpace!.count)
    
    print("4)Input line:")
    if let searchString = readLine() {
        print("Input substring :")
        if let substring = readLine() {
            if let range = searchString.range(of: substring) {
                print("Substring at index: ")
                print(searchString.distance(from: searchString.startIndex, to: range.lowerBound) + 1)
            }
        }
    }
    
}
