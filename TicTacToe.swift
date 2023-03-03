//
//  TicTacToe.swift
//  testTwoApp
//
//  Created by Natasha on 2/2/21.
//

import Foundation

// TIC TAC TOE

// Player 1
// Player 2

func ticTacToe(){
    print("Tic Tac Toe!" , "Player 1 is O and Player 2 is X.")
    var indexB = [" "," "," "," "," "," "," "," "," "]
    var player = 1
    var winP = [[0, 1, 2],
                [3, 4, 5],
                [6, 7, 8],
                [0, 3, 6],
                [1, 4, 7],
                [2, 5, 8],
                [0, 4, 8],
                [2, 4, 6] ]
    var count = 0
    
    while true  {
        board(indexB)
        print(" Player \(player) make your move [1-9]:")
        if let move = readLine() {
            if var move = Int(move) {
                if move > 0 && move < 10 {
                    move -= 1
                    let place = indexB[move]
                    if place == " " {
                        let temp = player == 1 ? "O": "X"
                        indexB[move] = temp
                        player = temp == "O" ? 2 : 1
                        count += 1
                        var check = false
                        for i in 0..<8 {
                            if indexB[winP[i][0]] != " " && indexB[winP[i][0]] == indexB[winP[i][1]] && indexB[winP[i][1]] == indexB[winP[i][2]] {
                                check = true
                                break
                            }
                        }
                        if check == true  {
                            board(indexB)
                            print(" \(player) Won!")
                            break
                        }
                    }
                    else {
                        print("Input Invalid, try again")
                        continue
                    }
                } else {
                    print("Input Invalid, try again")
                    continue
                    
                }
            } else {
                print("Input Invalid, try again")
                continue
            }
        }
        if !indexB.contains(" ") {
            print ("It's a draw")
        }
    }
}


func board(_ boardIndex: [String]) {
    
    print(" \(boardIndex[0]) | \(boardIndex[1]) | \(boardIndex[2])   ")
    print("---|---|---")
    print(" \(boardIndex[3]) | \(boardIndex[4]) | \(boardIndex[5])   ")
    print("---|---|---")
    print(" \(boardIndex[6]) | \(boardIndex[7]) | \(boardIndex[8])   ")
}

