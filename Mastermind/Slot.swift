//
//  Slot.swift
//  Mastermind
//
//  Created by Adrian McDaniel on 1/19/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import Foundation


public struct Slot : Equatable, CustomStringConvertible {
    
    public static func == (lhs: Slot, rhs: Slot) -> Bool {
        return lhs.spaces == rhs.spaces && lhs.lastPlayed == rhs.lastPlayed
    }
    
    
    
    public var spaces: [Ball]
    public var lastPlayed: Ball
    
    public init(spaces: [Ball], lastPlayed: Ball) {
        self.spaces = spaces
        self.lastPlayed = lastPlayed
    }
    
    
    
    
    public subscript(space: Int) -> Ball {
        get{
            if space < 0 || space > 3 {
                fatalError("Not a space on the slot")
            }
            return spaces[space]
        }
        set {
            spaces[space] = newValue
        }
        
    }
    
    
    public var description: String {
        let lineOne = "\(spaces[0])|\(spaces[1])|\(spaces[2])|\(spaces[3])"
        
        return lineOne
    }
    
    public mutating func takeSpace(space: Int, ball: Ball) ->  Bool {
        guard space < 4 && space > -1 else {
            return false }
        if ball == self.lastPlayed || self[space] != .empty || self.useBall(chosenBall: ball) == false {
            return false
        } else {
            self[space] = ball
            self.lastPlayed = ball
            return true
        }
    }
    
    public mutating func useBall(chosenBall: Ball) -> Bool {
        guard chosenBall != .empty else {
            return true
        }
        if self[0] == chosenBall || self[1] == chosenBall || self[2] == chosenBall || self[3] == chosenBall {
            return false
        } else {
            return true
        }
    }
    
    public mutating func slotFull() -> Bool {
        if self[0] != .empty && self[1] != .empty && self[2] != .empty && self[3] != .empty {
            return true
        } else {
            return false
        }
        
        
    }
}





