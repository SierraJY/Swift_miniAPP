//
//  main.swift
//  RandomBingo
//
//  Created by Sierra on 2023/02/06.
//

import Foundation

var computerChoice: Int = Int.random(in: 1...100)
var myChoice: Int = 0

while(true){
    var userInput = readLine()
    if let input = userInput{
        if let number = Int(input){
            myChoice = number
        }
    }
    print(myChoice)
    
    if computerChoice > myChoice{
        print("UP")
    }else if(computerChoice < myChoice){
        print("DOWN")
    }else{
        print("BINGO")
        break
    }
}
