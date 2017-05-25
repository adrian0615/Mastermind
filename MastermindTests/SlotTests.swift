//
//  SlotTests.swift
//  Mastermind
//
//  Created by Adrian McDaniel on 1/19/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import XCTest


@testable import Mastermind

class SlotTests: XCTestCase {

    func testTakeSpaceTrue() {
        var slot = Slot(spaces: [.empty, .empty, .empty, .empty], lastPlayed: .empty)
        
        let test = slot.takeSpace(space: 1, ball: .blue)
        let expected = Slot(spaces: [.empty, .blue, .empty, .empty], lastPlayed: .blue)
        
        XCTAssertEqual(slot, expected)
        XCTAssertEqual(test, true)
    }
    
    func testTakeSpaceTrue2() {
        var slot = Slot(spaces: [.empty, .empty, .empty, .empty], lastPlayed: .empty)
        
        let test = slot.takeSpace(space: 0, ball: .red)
        let expected = Slot(spaces: [.red, .empty, .empty, .empty], lastPlayed: .red)
        
        XCTAssertEqual(slot, expected)
        XCTAssertEqual(test, true)
    }
    
    func testTakeSpaceTrue3() {
        var slot = Slot(spaces: [.red, .blue, .empty, .empty], lastPlayed: .empty)
        
        let test = slot.takeSpace(space: 3, ball: .orange)
        let expected = Slot(spaces: [.red, .blue, .empty, .orange], lastPlayed: .orange)
        
        XCTAssertEqual(slot, expected)
        XCTAssertEqual(test, true)
    }
    
    func testTakeSpaceTrue4() {
        var slot = Slot(spaces: [.red, .blue, .empty, .orange], lastPlayed: .orange)
        
        let test = slot.takeSpace(space: 2, ball: .brown)
        let expected = Slot(spaces: [.red, .blue, .brown, .orange], lastPlayed: .brown)
        
        XCTAssertEqual(slot, expected)
        XCTAssertEqual(test, true)
    }
    
    func testTakeSpaceFalseWrongColor() {
        var slot = Slot(spaces: [.empty, .empty, .empty, .empty], lastPlayed: .empty)
        
        let test = slot.takeSpace(space: 1, ball: .purple)
        let expected = Slot(spaces: [.empty, .yellow, .empty, .empty], lastPlayed: .yellow)
        
        XCTAssertNotEqual(slot, expected)
        XCTAssertEqual(test, true)
    }
    
    func testTakeSpaceFalseWrongSpace() {
        var slot = Slot(spaces: [.empty, .empty, .empty, .empty], lastPlayed: .empty)
        
        let test = slot.takeSpace(space: 1, ball: .cyan)
        let expected = Slot(spaces: [.cyan, .empty, .empty, .empty], lastPlayed: .cyan)
        
        XCTAssertNotEqual(slot, expected)
        XCTAssertEqual(test, true)
    }
    
    func testTakeSpaceFalseReplaySameBall() {
        var slot = Slot(spaces: [.green, .blue, .empty, .empty], lastPlayed: .green)
        
        let test = slot.takeSpace(space: 3, ball: .blue)
        let expected = Slot(spaces: [.green, .blue, .empty, .empty], lastPlayed: .blue)
        
        XCTAssertNotEqual(slot, expected)
        XCTAssertEqual(test, false)
    }
    
    func testTakeSpaceFalseLastPlayed() {
        var slot = Slot(spaces: [.red, .blue, .empty, .orange], lastPlayed: .orange)
        
        let test = slot.takeSpace(space: 2, ball: .brown)
        let expected = Slot(spaces: [.red, .blue, .brown, .orange], lastPlayed: .orange)
        
        XCTAssertNotEqual(slot, expected)
        XCTAssertEqual(test, true)
    }
    
    func testSlotFull() {
        var slot = Slot(spaces: [.red, .blue, .green, .yellow], lastPlayed: .empty)
        let test = slot.slotFull()
        
        XCTAssertEqual(test, true)
    }
    
    func testSlotFull2() {
        var slot = Slot(spaces: [.brown, .cyan, .orange, .purple], lastPlayed: .empty)
        let test = slot.slotFull()
        
        XCTAssertEqual(test, true)
    }
    
    func testSlotFull3() {
        var slot = Slot(spaces: [.brown, .brown, .brown, .brown], lastPlayed: .empty)
        let test = slot.slotFull()
        
        XCTAssertEqual(test, true)
    }
    
    func testSlotFull4() {
        var slot = Slot(spaces: [.red, .cyan, .cyan, .yellow], lastPlayed: .empty)
        let test = slot.slotFull()
        
        XCTAssertEqual(test, true)
    }
    
    func testSlotFullFalse() {
        var slot = Slot(spaces: [.empty, .empty, .empty, .empty], lastPlayed: .empty)
        let test = slot.slotFull()
        
        XCTAssertEqual(test, false)
    }
    
    func testSlotFullFalse2() {
        var slot = Slot(spaces: [.purple, .empty, .green, .empty], lastPlayed: .empty)
        let test = slot.slotFull()
        
        XCTAssertEqual(test, false)
    }
    
    func testSlotFullFalse3() {
        var slot = Slot(spaces: [.cyan, .blue, .green, .empty], lastPlayed: .empty)
        let test = slot.slotFull()
        
        XCTAssertEqual(test, false)
    }
    
    func testSlotFullFalse4() {
        var slot = Slot(spaces: [.cyan, .empty, .empty, .red], lastPlayed: .empty)
        let test = slot.slotFull()
        
        XCTAssertEqual(test, false)
    }
    
    
}
