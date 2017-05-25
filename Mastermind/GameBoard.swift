//
//  GameBoard.swift
//  Mastermind
//
//  Created by Adrian McDaniel on 1/19/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import Foundation
import GameplayKit



class GameBoard {
    
    
    var slots: [Slot]
    var fourBalls: [Ball]
    var blackBalls: Int = 0
    var whiteBalls: Int = 0
    
    
    init(slots: [Slot], fourBalls: [Ball]) {
        self.slots = slots
        self.fourBalls = fourBalls
    }
    
    
    func determineCorrect(slot: Slot) {
        
        if slot.spaces[0] == fourBalls[0] && slot.spaces[1] == fourBalls[1] && slot.spaces[2] == fourBalls[2] && slot.spaces[3] == fourBalls[3] {
            blackBalls = 4
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && fourBalls.contains(slot.spaces[0]) && fourBalls.contains(slot.spaces[1]) && fourBalls.contains(slot.spaces[2]) && fourBalls.contains(slot.spaces[3]) {
            blackBalls = 0
            whiteBalls = 4
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && !fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[1]) && !fourBalls.contains(slot.spaces[2]) && !fourBalls.contains(slot.spaces[3]) {
            blackBalls = 0
            whiteBalls = 0
            
        } else if slot.spaces[0] == fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && fourBalls.contains(slot.spaces[1]) && fourBalls.contains(slot.spaces[2]) && fourBalls.contains(slot.spaces[3]) {
            blackBalls = 1
            whiteBalls = 3
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] == fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && fourBalls.contains(slot.spaces[0]) && fourBalls.contains(slot.spaces[2]) && fourBalls.contains(slot.spaces[3]) {
            blackBalls = 1
            whiteBalls = 3
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] == fourBalls[2] && slot.spaces[3] != fourBalls[3] && fourBalls.contains(slot.spaces[0]) && fourBalls.contains(slot.spaces[1]) && fourBalls.contains(slot.spaces[3]) {
            blackBalls = 1
            whiteBalls = 3
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] == fourBalls[3] && fourBalls.contains(slot.spaces[0]) && fourBalls.contains(slot.spaces[1]) && fourBalls.contains(slot.spaces[2]) {
            blackBalls = 1
            whiteBalls = 3
        
            
        } else if slot.spaces[0] == fourBalls[0] && slot.spaces[1] == fourBalls[1] && slot.spaces[2] == fourBalls[2] && slot.spaces[3] != fourBalls[3] {
            blackBalls = 3
            
        } else if slot.spaces[0] == fourBalls[0] && slot.spaces[1] == fourBalls[1] && slot.spaces[3] == fourBalls[3] && slot.spaces[2] != fourBalls[2] {
            blackBalls = 3
            
        } else if slot.spaces[0] == fourBalls[0] && slot.spaces[2] == fourBalls[2] && slot.spaces[3] == fourBalls[3] && slot.spaces[1] != fourBalls[1] {
            blackBalls = 3
            
        } else if slot.spaces[1] == fourBalls[1] && slot.spaces[2] == fourBalls[2] && slot.spaces[3] == fourBalls[3] && slot.spaces[0] != fourBalls[0] {
            blackBalls = 3
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && !fourBalls.contains(slot.spaces[0]) && fourBalls.contains(slot.spaces[1]) && fourBalls.contains(slot.spaces[2]) && fourBalls.contains(slot.spaces[3]) {
            blackBalls = 0
            whiteBalls = 3
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && !fourBalls.contains(slot.spaces[1]) && fourBalls.contains(slot.spaces[0]) && fourBalls.contains(slot.spaces[2]) && fourBalls.contains(slot.spaces[3]) {
            blackBalls = 0
            whiteBalls = 3
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && !fourBalls.contains(slot.spaces[2]) && fourBalls.contains(slot.spaces[0]) && fourBalls.contains(slot.spaces[1]) && fourBalls.contains(slot.spaces[3]) {
            blackBalls = 0
            whiteBalls = 3
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && !fourBalls.contains(slot.spaces[3]) && fourBalls.contains(slot.spaces[0]) && fourBalls.contains(slot.spaces[1]) && fourBalls.contains(slot.spaces[2]) {
            blackBalls = 0
            whiteBalls = 3
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] == fourBalls[2] && slot.spaces[3] == fourBalls[3] && fourBalls.contains(slot.spaces[0]) && fourBalls.contains(slot.spaces[1]) {
            blackBalls = 2
            whiteBalls = 2
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[2] != fourBalls[2] && slot.spaces[1] == fourBalls[1] && slot.spaces[3] == fourBalls[3] && fourBalls.contains(slot.spaces[0]) && fourBalls.contains(slot.spaces[2]) {
            blackBalls = 2
            whiteBalls = 2
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[3] != fourBalls[3] && slot.spaces[1] == fourBalls[1] && slot.spaces[2] == fourBalls[2] && fourBalls.contains(slot.spaces[0]) && fourBalls.contains(slot.spaces[3]) {
            blackBalls = 2
            whiteBalls = 2
            
        } else if slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[0] == fourBalls[0] && slot.spaces[3] == fourBalls[3] && fourBalls.contains(slot.spaces[1]) && fourBalls.contains(slot.spaces[2]) {
            blackBalls = 2
            whiteBalls = 2
            
        } else if slot.spaces[1] != fourBalls[1] && slot.spaces[3] != fourBalls[3] && slot.spaces[0] == fourBalls[0] && slot.spaces[2] == fourBalls[2] && fourBalls.contains(slot.spaces[1]) && fourBalls.contains(slot.spaces[3]) {
            blackBalls = 2
            whiteBalls = 2
            
        } else if slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && slot.spaces[0] == fourBalls[0] && slot.spaces[1] == fourBalls[1] && fourBalls.contains(slot.spaces[2]) && fourBalls.contains(slot.spaces[3]) {
            blackBalls = 2
            whiteBalls = 2
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] == fourBalls[2] && slot.spaces[3] == fourBalls[3] && !fourBalls.contains(slot.spaces[1]) && fourBalls.contains(slot.spaces[0]) {
            blackBalls = 2
            whiteBalls = 1
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] == fourBalls[2] && slot.spaces[3] == fourBalls[3] && !fourBalls.contains(slot.spaces[0]) && fourBalls.contains(slot.spaces[1]) {
            blackBalls = 2
            whiteBalls = 1
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[2] != fourBalls[2] && slot.spaces[1] == fourBalls[1] && slot.spaces[3] == fourBalls[3] && !fourBalls.contains(slot.spaces[2]) && fourBalls.contains(slot.spaces[0]) {
            blackBalls = 2
            whiteBalls = 1
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[2] != fourBalls[2] && slot.spaces[1] == fourBalls[1] && slot.spaces[3] == fourBalls[3] && !fourBalls.contains(slot.spaces[0]) && fourBalls.contains(slot.spaces[2]) {
            blackBalls = 2
            whiteBalls = 1
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[3] != fourBalls[3] && slot.spaces[1] == fourBalls[1] && slot.spaces[2] == fourBalls[2] && !fourBalls.contains(slot.spaces[3]) && fourBalls.contains(slot.spaces[0]) {
            blackBalls = 2
            whiteBalls = 1
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[3] != fourBalls[3] && slot.spaces[1] == fourBalls[1] && slot.spaces[2] == fourBalls[2] && !fourBalls.contains(slot.spaces[0]) && fourBalls.contains(slot.spaces[3]) {
            blackBalls = 2
            whiteBalls = 1
            
        } else if slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[0] == fourBalls[0] && slot.spaces[3] == fourBalls[3] && fourBalls.contains(slot.spaces[2]) && !fourBalls.contains(slot.spaces[1]) {
            blackBalls = 2
            whiteBalls = 1
            
        } else if slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[0] == fourBalls[0] && slot.spaces[3] == fourBalls[3] && !fourBalls.contains(slot.spaces[1]) && fourBalls.contains(slot.spaces[2]) {
            blackBalls = 2
            whiteBalls = 1
            
            
        } else if slot.spaces[1] != fourBalls[1] && slot.spaces[3] != fourBalls[3] && slot.spaces[0] == fourBalls[0] && slot.spaces[2] == fourBalls[2] && !fourBalls.contains(slot.spaces[3]) && fourBalls.contains(slot.spaces[1]) {
            blackBalls = 2
            whiteBalls = 1
            
        } else if slot.spaces[1] != fourBalls[1] && slot.spaces[3] != fourBalls[3] && slot.spaces[0] == fourBalls[0] && slot.spaces[2] == fourBalls[2] && !fourBalls.contains(slot.spaces[1]) && fourBalls.contains(slot.spaces[3]) {
            blackBalls = 2
            whiteBalls = 1
            
        } else if slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && slot.spaces[0] == fourBalls[0] && slot.spaces[1] == fourBalls[1] && !fourBalls.contains(slot.spaces[3]) && fourBalls.contains(slot.spaces[2]) {
            blackBalls = 2
            whiteBalls = 1
            
        } else if slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && slot.spaces[0] == fourBalls[0] && slot.spaces[1] == fourBalls[1] && !fourBalls.contains(slot.spaces[2]) && fourBalls.contains(slot.spaces[3]) {
            blackBalls = 2
            whiteBalls = 1
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] == fourBalls[2] && slot.spaces[3] == fourBalls[3] && !fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[1]) {
            blackBalls = 2
            
        
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] == fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] == fourBalls[3] && !fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[2]) {
            blackBalls = 2
            
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] == fourBalls[1] && slot.spaces[2] == fourBalls[2] && slot.spaces[3] != fourBalls[3] && !fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[3]) {
            blackBalls = 2
            
            
        } else if slot.spaces[0] == fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] == fourBalls[3] && !fourBalls.contains(slot.spaces[1]) && !fourBalls.contains(slot.spaces[2]) {
            blackBalls = 2
            
            
        } else if slot.spaces[0] == fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] == fourBalls[2] && slot.spaces[3] != fourBalls[3] && !fourBalls.contains(slot.spaces[1]) && !fourBalls.contains(slot.spaces[3]) {
            blackBalls = 2
            
            
        } else if slot.spaces[0] == fourBalls[0] && slot.spaces[1] == fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && !fourBalls.contains(slot.spaces[2]) && !fourBalls.contains(slot.spaces[3]) {
            blackBalls = 2
            
            
        } else if slot.spaces[0] == fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && !fourBalls.contains(slot.spaces[1]) && fourBalls.contains(slot.spaces[2]) && fourBalls.contains(slot.spaces[3]) {
            blackBalls = 1
            whiteBalls = 2
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] == fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && !fourBalls.contains(slot.spaces[0]) && fourBalls.contains(slot.spaces[2]) && fourBalls.contains(slot.spaces[3]) {
            blackBalls = 1
            whiteBalls = 2
            
        } else if slot.spaces[0] == fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && fourBalls.contains(slot.spaces[1]) && !fourBalls.contains(slot.spaces[2]) && fourBalls.contains(slot.spaces[3]) {
            blackBalls = 1
            whiteBalls = 2
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] == fourBalls[2] && slot.spaces[3] != fourBalls[3] && !fourBalls.contains(slot.spaces[0]) && fourBalls.contains(slot.spaces[1]) && fourBalls.contains(slot.spaces[3]) {
            blackBalls = 1
            whiteBalls = 2
            
        } else if slot.spaces[0] == fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && fourBalls.contains(slot.spaces[1]) && fourBalls.contains(slot.spaces[2]) && !fourBalls.contains(slot.spaces[3]) {
            blackBalls = 1
            whiteBalls = 2
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] == fourBalls[3] && !fourBalls.contains(slot.spaces[0]) && fourBalls.contains(slot.spaces[1]) && fourBalls.contains(slot.spaces[2]) {
            blackBalls = 1
            whiteBalls = 2
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] == fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[2]) && fourBalls.contains(slot.spaces[3]) {
            blackBalls = 1
            whiteBalls = 2
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] == fourBalls[2] && slot.spaces[3] != fourBalls[3] && fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[1]) && fourBalls.contains(slot.spaces[3]) {
            blackBalls = 1
            whiteBalls = 2
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] == fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && fourBalls.contains(slot.spaces[0]) && fourBalls.contains(slot.spaces[2]) && !fourBalls.contains(slot.spaces[3]) {
            blackBalls = 1
            whiteBalls = 2
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] == fourBalls[3] && fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[1]) && fourBalls.contains(slot.spaces[2]) {
            blackBalls = 1
            whiteBalls = 2
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] == fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && fourBalls.contains(slot.spaces[0]) && fourBalls.contains(slot.spaces[2]) && !fourBalls.contains(slot.spaces[3]) {
            blackBalls = 1
            whiteBalls = 2
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] == fourBalls[3] && fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[1]) && fourBalls.contains(slot.spaces[2]) {
            blackBalls = 1
            whiteBalls = 2
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] == fourBalls[2] && slot.spaces[3] != fourBalls[3] && fourBalls.contains(slot.spaces[0]) && fourBalls.contains(slot.spaces[1]) && !fourBalls.contains(slot.spaces[3]) {
            blackBalls = 1
            whiteBalls = 2
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] == fourBalls[3] && fourBalls.contains(slot.spaces[0]) && fourBalls.contains(slot.spaces[1]) && !fourBalls.contains(slot.spaces[2]) {
            blackBalls = 1
            whiteBalls = 2
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && !fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[1]) && fourBalls.contains(slot.spaces[2]) && fourBalls.contains(slot.spaces[3]) {
            blackBalls = 0
            whiteBalls = 2
        
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && !fourBalls.contains(slot.spaces[0]) && fourBalls.contains(slot.spaces[1]) && !fourBalls.contains(slot.spaces[2]) && fourBalls.contains(slot.spaces[3]) {
            blackBalls = 0
            whiteBalls = 2
            
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && fourBalls.contains(slot.spaces[1]) && fourBalls.contains(slot.spaces[2]) && !fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[3]) {
            blackBalls = 0
            whiteBalls = 2
        
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[1]) && !fourBalls.contains(slot.spaces[2]) && fourBalls.contains(slot.spaces[3]) {
            blackBalls = 0
            whiteBalls = 2
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[1]) && fourBalls.contains(slot.spaces[2]) && !fourBalls.contains(slot.spaces[3]) {
            blackBalls = 0
            whiteBalls = 2
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && fourBalls.contains(slot.spaces[0]) && fourBalls.contains(slot.spaces[1]) && !fourBalls.contains(slot.spaces[2]) && !fourBalls.contains(slot.spaces[3]) {
            blackBalls = 0
            whiteBalls = 2
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] == fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[2]) && !fourBalls.contains(slot.spaces[3]) {
            blackBalls = 1
            whiteBalls = 1
            
        } else if slot.spaces[0] == fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && fourBalls.contains(slot.spaces[1]) && !fourBalls.contains(slot.spaces[2]) && !fourBalls.contains(slot.spaces[3]) {
            blackBalls = 1
            whiteBalls = 1
            
        } else if slot.spaces[0] == fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && fourBalls.contains(slot.spaces[2]) && !fourBalls.contains(slot.spaces[1]) && !fourBalls.contains(slot.spaces[3]) {
            blackBalls = 1
            whiteBalls = 1
            
        } else if slot.spaces[0] == fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && fourBalls.contains(slot.spaces[3]) && !fourBalls.contains(slot.spaces[1]) && !fourBalls.contains(slot.spaces[2]) {
            blackBalls = 1
            whiteBalls = 1
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] == fourBalls[3] && fourBalls.contains(slot.spaces[2]) && !fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[1]) {
            blackBalls = 1
            whiteBalls = 1
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] == fourBalls[3] && fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[1]) && !fourBalls.contains(slot.spaces[2]) {
            blackBalls = 1
            whiteBalls = 1
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] == fourBalls[3] && fourBalls.contains(slot.spaces[1]) && !fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[2]) {
            blackBalls = 1
            whiteBalls = 1
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] == fourBalls[2] && slot.spaces[3] != fourBalls[3] && fourBalls.contains(slot.spaces[3]) && !fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[1]) {
            blackBalls = 1
            whiteBalls = 1
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] == fourBalls[2] && slot.spaces[3] != fourBalls[3] && fourBalls.contains(slot.spaces[1]) && !fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[3]) {
            blackBalls = 1
            whiteBalls = 1
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] == fourBalls[2] && slot.spaces[3] != fourBalls[3] && fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[1]) && !fourBalls.contains(slot.spaces[3]) {
            blackBalls = 1
            whiteBalls = 1
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] == fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[2]) && !fourBalls.contains(slot.spaces[3]) {
            blackBalls = 1
            whiteBalls = 1
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] == fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && fourBalls.contains(slot.spaces[2]) && !fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[3]) {
            blackBalls = 1
            whiteBalls = 1
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] == fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && fourBalls.contains(slot.spaces[3]) && !fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[2]) {
            blackBalls = 1
            whiteBalls = 1
            
        } else if slot.spaces[0] == fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && !fourBalls.contains(slot.spaces[1]) && !fourBalls.contains(slot.spaces[2]) && !fourBalls.contains(slot.spaces[3]) {
            blackBalls = 1
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] == fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && !fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[2]) && !fourBalls.contains(slot.spaces[3]) {
            blackBalls = 1
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] == fourBalls[2] && slot.spaces[3] != fourBalls[3] && !fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[1]) && !fourBalls.contains(slot.spaces[3]) {
            blackBalls = 1
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] == fourBalls[3] && !fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[1]) && !fourBalls.contains(slot.spaces[2]) {
            blackBalls = 1
            
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[1]) && !fourBalls.contains(slot.spaces[2]) && !fourBalls.contains(slot.spaces[3]) {
            blackBalls = 0
            whiteBalls = 1
            
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && !fourBalls.contains(slot.spaces[0]) && fourBalls.contains(slot.spaces[1]) && !fourBalls.contains(slot.spaces[2]) && !fourBalls.contains(slot.spaces[3]) {
            blackBalls = 0
            whiteBalls = 1
            
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && !fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[1]) && fourBalls.contains(slot.spaces[2]) && !fourBalls.contains(slot.spaces[3]) {
            blackBalls = 0
            whiteBalls = 1
            
            
        } else if slot.spaces[0] != fourBalls[0] && slot.spaces[1] != fourBalls[1] && slot.spaces[2] != fourBalls[2] && slot.spaces[3] != fourBalls[3] && !fourBalls.contains(slot.spaces[0]) && !fourBalls.contains(slot.spaces[1]) && !fourBalls.contains(slot.spaces[2]) && fourBalls.contains(slot.spaces[3]) {
            blackBalls = 0
            whiteBalls = 1
            
        } else {
            blackBalls = 0
            whiteBalls = 0
        }
    }
    
    
    func slotIsAWinner() -> Bool {
        if blackBalls == 4 {
            return true
        } else {
            return false
        }
    }
    
    
}


