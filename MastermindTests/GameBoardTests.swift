//
//  GameBoardTests.swift
//  Mastermind
//
//  Created by Adrian McDaniel on 1/19/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import XCTest
@testable import Mastermind

class GameBoardTests: XCTestCase {
    
    func testCorrect0() {
        
        let gameBoard = GameBoard(slots: [Slot(spaces: [.yellow, .purple, .red, .orange], lastPlayed: .empty)], fourBalls: [.blue, .brown, .cyan, .green])
        
        gameBoard.determineCorrect(slot: gameBoard.slots[0])
        
        let blackExpected = 0
        let whiteExpected = 0
        
        XCTAssertEqual(blackExpected, gameBoard.blackBalls)
        XCTAssertEqual(whiteExpected, gameBoard.whiteBalls)
        
    }
    
    func testCorrect1White() {
        
        let gameBoard = GameBoard(slots: [Slot(spaces: [.brown, .yellow, .orange, .red], lastPlayed: .empty)], fourBalls: [.blue, .brown, .cyan, .green])
        
        gameBoard.determineCorrect(slot: gameBoard.slots[0])
        
        let blackExpected = 0
        let whiteExpected = 1
        
        XCTAssertEqual(blackExpected, gameBoard.blackBalls)
        XCTAssertEqual(whiteExpected, gameBoard.whiteBalls)
        
    }
    
    
    func testCorrect1WhiteAgain() {
        
        let gameBoard = GameBoard(slots: [Slot(spaces: [.orange, .cyan, .purple, .red], lastPlayed: .empty)], fourBalls: [.blue, .brown, .cyan, .green])
        
        gameBoard.determineCorrect(slot: gameBoard.slots[0])
        
        let blackExpected = 0
        let whiteExpected = 1
        
        XCTAssertEqual(blackExpected, gameBoard.blackBalls)
        XCTAssertEqual(whiteExpected, gameBoard.whiteBalls)
        
    }
    
    func testCorrect1Black() {
        
        let gameBoard = GameBoard(slots: [Slot(spaces: [.orange, .red, .cyan, .purple], lastPlayed: .empty)], fourBalls: [.blue, .brown, .cyan, .green])
        
        gameBoard.determineCorrect(slot: gameBoard.slots[0])
        
        let blackExpected = 1
        let whiteExpected = 0
        
        XCTAssertEqual(blackExpected, gameBoard.blackBalls)
        XCTAssertEqual(whiteExpected, gameBoard.whiteBalls)
        
    }
    
    func testCorrect1BlackAgain() {
        
        let gameBoard = GameBoard(slots: [Slot(spaces: [.red, .brown, .purple, .yellow], lastPlayed: .empty)], fourBalls: [.blue, .brown, .cyan, .green])
        
        gameBoard.determineCorrect(slot: gameBoard.slots[0])
        
        let blackExpected = 1
        let whiteExpected = 0
        
        XCTAssertEqual(blackExpected, gameBoard.blackBalls)
        XCTAssertEqual(whiteExpected, gameBoard.whiteBalls)
        
    }
    
    func testCorrect2Black0() {
        
        let gameBoard = GameBoard(slots: [Slot(spaces: [.purple, .yellow, .cyan, .green], lastPlayed: .empty)], fourBalls: [.blue, .brown, .cyan, .green])
        
        gameBoard.determineCorrect(slot: gameBoard.slots[0])
        
        let blackExpected = 2
        let whiteExpected = 0
        
        XCTAssertEqual(blackExpected, gameBoard.blackBalls)
        XCTAssertEqual(whiteExpected, gameBoard.whiteBalls)
        
    }
    
    func testCorrect2BlackAgain() {
        
        let gameBoard = GameBoard(slots: [Slot(spaces: [.blue, .brown, .yellow, .red], lastPlayed: .empty)], fourBalls: [.blue, .brown, .cyan, .green])
        
        gameBoard.determineCorrect(slot: gameBoard.slots[0])
        
        let blackExpected = 2
        let whiteExpected = 0
        
        XCTAssertEqual(blackExpected, gameBoard.blackBalls)
        XCTAssertEqual(whiteExpected, gameBoard.whiteBalls)
        
    }
    
    func testCorrect2BlackOneMore() {
        
        let gameBoard = GameBoard(slots: [Slot(spaces: [.orange, .brown, .cyan, .red], lastPlayed: .empty)], fourBalls: [.blue, .brown, .cyan, .green])
        
        gameBoard.determineCorrect(slot: gameBoard.slots[0])
        
        let blackExpected = 2
        let whiteExpected = 0
        
        XCTAssertEqual(blackExpected, gameBoard.blackBalls)
        XCTAssertEqual(whiteExpected, gameBoard.whiteBalls)
        
    }
    
    func testCorrect3Black() {
        
        let gameBoard = GameBoard(slots: [Slot(spaces: [.blue, .brown, .orange, .green], lastPlayed: .empty)], fourBalls: [.blue, .brown, .cyan, .green])
        
        gameBoard.determineCorrect(slot: gameBoard.slots[0])
        
        let blackExpected = 3
        let whiteExpected = 0
        
        XCTAssertEqual(blackExpected, gameBoard.blackBalls)
        XCTAssertEqual(whiteExpected, gameBoard.whiteBalls)
        
    }
    
    func testCorrect3BlackAgain() {
        
        let gameBoard = GameBoard(slots: [Slot(spaces: [.red, .brown, .cyan, .green], lastPlayed: .empty)], fourBalls: [.blue, .brown, .cyan, .green])
        
        gameBoard.determineCorrect(slot: gameBoard.slots[0])
        
        let blackExpected = 3
        let whiteExpected = 0
        
        XCTAssertEqual(blackExpected, gameBoard.blackBalls)
        XCTAssertEqual(whiteExpected, gameBoard.whiteBalls)
        
    }
    
    func testCorrect3BlackOneMore() {
        
        let gameBoard = GameBoard(slots: [Slot(spaces: [.blue, .brown, .cyan, .red], lastPlayed: .empty)], fourBalls: [.blue, .brown, .cyan, .green])
        
        gameBoard.determineCorrect(slot: gameBoard.slots[0])
        
        let blackExpected = 3
        let whiteExpected = 0
        
        XCTAssertEqual(blackExpected, gameBoard.blackBalls)
        XCTAssertEqual(whiteExpected, gameBoard.whiteBalls)
        
    }
    
    
    func testCorrect1White1Black() {
        
        let gameBoard = GameBoard(slots: [Slot(spaces: [.red, .blue, .cyan, .purple], lastPlayed: .empty)], fourBalls: [.blue, .brown, .cyan, .green])
        
        gameBoard.determineCorrect(slot: gameBoard.slots[0])
        
        let blackExpected = 1
        let whiteExpected = 1
        
        XCTAssertEqual(blackExpected, gameBoard.blackBalls)
        XCTAssertEqual(whiteExpected, gameBoard.whiteBalls)
        
    }
    
    func testCorrect1White1BlackAgain() {
        
        let gameBoard = GameBoard(slots: [Slot(spaces: [.blue, .orange, .red, .brown], lastPlayed: .empty)], fourBalls: [.blue, .brown, .cyan, .green])
        
        gameBoard.determineCorrect(slot: gameBoard.slots[0])
        
        let blackExpected = 1
        let whiteExpected = 1
        
        XCTAssertEqual(blackExpected, gameBoard.blackBalls)
        XCTAssertEqual(whiteExpected, gameBoard.whiteBalls)
        
    }
    
    func testCorrect1White1BlackThree() {
        
        let gameBoard = GameBoard(slots: [Slot(spaces: [.blue, .red, .green, .purple], lastPlayed: .empty)], fourBalls: [.blue, .brown, .cyan, .green])
        
        gameBoard.determineCorrect(slot: gameBoard.slots[0])
        
        let blackExpected = 1
        let whiteExpected = 1
        
        XCTAssertEqual(blackExpected, gameBoard.blackBalls)
        XCTAssertEqual(whiteExpected, gameBoard.whiteBalls)
        
    }
    
    func testCorrect1White1BlackAnother() {
        //space 1 is equal and gold is included
        let gameBoard = GameBoard(slots: [Slot(spaces: [.cyan, .brown, .yellow, .purple], lastPlayed: .empty)], fourBalls: [.blue, .brown, .cyan, .green])
        
        gameBoard.determineCorrect(slot: gameBoard.slots[0])
        
        let blackExpected = 1
        let whiteExpected = 1
        
        XCTAssertEqual(blackExpected, gameBoard.blackBalls)
        XCTAssertEqual(whiteExpected, gameBoard.whiteBalls)
        
    }
    
    func testCorrect1White1BlackOneLastTime() {
        //space
        let gameBoard = GameBoard(slots: [Slot(spaces: [.brown, .yellow, .orange, .green], lastPlayed: .empty)], fourBalls: [.blue, .brown, .cyan, .green])
        
        gameBoard.determineCorrect(slot: gameBoard.slots[0])
        
        let blackExpected = 1
        let whiteExpected = 1
        
        XCTAssertEqual(blackExpected, gameBoard.blackBalls)
        XCTAssertEqual(whiteExpected, gameBoard.whiteBalls)
        
    }
    
    func testCorrect2White1Black() {
        
        let gameBoard = GameBoard(slots: [Slot(spaces: [.brown, .cyan, .purple, .green], lastPlayed: .empty)], fourBalls: [.blue, .brown, .cyan, .green])
        
        gameBoard.determineCorrect(slot: gameBoard.slots[0])
        
        let blackExpected = 1
        let whiteExpected = 2
        
        XCTAssertEqual(blackExpected, gameBoard.blackBalls)
        XCTAssertEqual(whiteExpected, gameBoard.whiteBalls)
        
    }
    
    func testCorrect1White2Black() {
        
        let gameBoard = GameBoard(slots: [Slot(spaces: [.blue, .cyan, .red, .green], lastPlayed: .empty)], fourBalls: [.blue, .brown, .cyan, .green])
        
        gameBoard.determineCorrect(slot: gameBoard.slots[0])
        
        let blackExpected = 2
        let whiteExpected = 1
        
        XCTAssertEqual(blackExpected, gameBoard.blackBalls)
        XCTAssertEqual(whiteExpected, gameBoard.whiteBalls)
        
    }
    
    func testCorrect2White2Black() {
        
        let gameBoard = GameBoard(slots: [Slot(spaces: [.blue, .cyan, .brown, .green], lastPlayed: .empty)], fourBalls: [.blue, .brown, .cyan, .green])
        
        gameBoard.determineCorrect(slot: gameBoard.slots[0])
        
        let blackExpected = 2
        let whiteExpected = 2
        
        XCTAssertEqual(blackExpected, gameBoard.blackBalls)
        XCTAssertEqual(whiteExpected, gameBoard.whiteBalls)
        
    }
    
    func testCorrect2White() {
        
        let gameBoard = GameBoard(slots: [Slot(spaces: [.cyan, .green, .orange, .red], lastPlayed: .empty)], fourBalls: [.blue, .brown, .cyan, .green])
        
        gameBoard.determineCorrect(slot: gameBoard.slots[0])
        
        let blackExpected = 0
        let whiteExpected = 2
        
        XCTAssertEqual(blackExpected, gameBoard.blackBalls)
        XCTAssertEqual(whiteExpected, gameBoard.whiteBalls)
        
    }
    
    func testCorrect2WhiteAgain() {
        
        let gameBoard = GameBoard(slots: [Slot(spaces: [.purple, .green, .brown, .red], lastPlayed: .empty)], fourBalls: [.blue, .brown, .cyan, .green])
        
        gameBoard.determineCorrect(slot: gameBoard.slots[0])
        
        let blackExpected = 0
        let whiteExpected = 2
        
        XCTAssertEqual(blackExpected, gameBoard.blackBalls)
        XCTAssertEqual(whiteExpected, gameBoard.whiteBalls)
        
    }
    
    func testCorrect2WhiteOneMore() {
        
        let gameBoard = GameBoard(slots: [Slot(spaces: [.purple, .green, .yellow, .cyan], lastPlayed: .empty)], fourBalls: [.blue, .brown, .cyan, .green])
        
        gameBoard.determineCorrect(slot: gameBoard.slots[0])
        
        let blackExpected = 0
        let whiteExpected = 2
        
        XCTAssertEqual(blackExpected, gameBoard.blackBalls)
        XCTAssertEqual(whiteExpected, gameBoard.whiteBalls)
        
    }
    
    func testCorrect4White() {
        
        let gameBoard = GameBoard(slots: [Slot(spaces: [.cyan, .green, .brown, .blue], lastPlayed: .empty)], fourBalls: [.blue, .brown, .cyan, .green])
        
        gameBoard.determineCorrect(slot: gameBoard.slots[0])
        
        let blackExpected = 0
        let whiteExpected = 4
        
        XCTAssertEqual(blackExpected, gameBoard.blackBalls)
        XCTAssertEqual(whiteExpected, gameBoard.whiteBalls)
        
    }
    
    func testCorrect4Black() {
        
        let gameBoard = GameBoard(slots: [Slot(spaces: [.blue, .brown, .cyan, .green], lastPlayed: .empty)], fourBalls: [.blue, .brown, .cyan, .green])
        
        gameBoard.determineCorrect(slot: gameBoard.slots[0])
        
        let blackExpected = 4
        let whiteExpected = 0
        
        XCTAssertEqual(blackExpected, gameBoard.blackBalls)
        XCTAssertEqual(whiteExpected, gameBoard.whiteBalls)
        
    }
    
    
}
