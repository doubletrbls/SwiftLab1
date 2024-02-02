//
//  main.swift
//  lab1
//
//  Created by Sarvar Saidazov on 29.01.2024.
//

import Foundation

//√(option + v)

print("Chose task(1,2):")
let choice = readLine()
switch (choice) {
    case "1":
        task1()
    case "2":
        task2()
    default:
        print("No such task❗️")
}




