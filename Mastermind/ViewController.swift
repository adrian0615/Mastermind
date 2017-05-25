//
//  ViewController.swift
//  Mastermind
//
//  Created by Adrian McDaniel on 1/19/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import UIKit
import GameKit

class ViewController: UIViewController {
    
    var pcView = PCView()
    
    var balls : [Ball] = [.red, .orange, .yellow, .cyan, .green, .blue, .purple, .brown]
    
    var gameBoard = GameBoard(slots: [Slot(spaces: [.empty, .empty, .empty, .empty], lastPlayed: .empty), Slot(spaces: [.empty, .empty, .empty, .empty], lastPlayed: .empty), Slot(spaces: [.empty, .empty, .empty, .empty], lastPlayed: .empty), Slot(spaces: [.empty, .empty, .empty, .empty], lastPlayed: .empty), Slot(spaces: [.empty, .empty, .empty, .empty], lastPlayed: .empty), Slot(spaces: [.empty, .empty, .empty, .empty], lastPlayed: .empty), Slot(spaces: [.empty, .empty, .empty, .empty], lastPlayed: .empty), Slot(spaces: [.empty, .empty, .empty, .empty], lastPlayed: .empty)], fourBalls: [.green, .orange, .brown, .yellow])
    
    var selectedfromEightColor: Ball = .empty

    
    
    
    
    func colorSelect(sender: UIButton!) {
        let btnsendtag: UIButton = sender
        
        if btnsendtag.tag == 1 {
            
            pcView.redButton.layer.borderWidth = 4.0
            pcView.orangeButton.layer.borderWidth = 0
            pcView.yellowButton.layer.borderWidth = 0
            pcView.brownButton.layer.borderWidth = 0
            pcView.blueButton.layer.borderWidth = 0
            pcView.greenButton.layer.borderWidth = 0
            pcView.cyanButton.layer.borderWidth = 0
            pcView.purpleButton.layer.borderWidth = 0
            
            pcView.redButton.layer.borderColor = UIColor.black.cgColor
            
            selectedfromEightColor = .red
            
            print("red button tapped")
        }
        
        if btnsendtag.tag == 2 {
            
            pcView.redButton.layer.borderWidth = 0
            pcView.orangeButton.layer.borderWidth = 4.0
            pcView.yellowButton.layer.borderWidth = 0
            pcView.brownButton.layer.borderWidth = 0
            pcView.blueButton.layer.borderWidth = 0
            pcView.greenButton.layer.borderWidth = 0
            pcView.cyanButton.layer.borderWidth = 0
            pcView.purpleButton.layer.borderWidth = 0
            
            pcView.orangeButton.layer.borderColor = UIColor.black.cgColor
            
            selectedfromEightColor = .orange
            
            print("orange button tapped")
        }
        
        if btnsendtag.tag == 3 {
            
            pcView.redButton.layer.borderWidth = 0
            pcView.orangeButton.layer.borderWidth = 0
            pcView.yellowButton.layer.borderWidth = 4.0
            pcView.brownButton.layer.borderWidth = 0
            pcView.blueButton.layer.borderWidth = 0
            pcView.greenButton.layer.borderWidth = 0
            pcView.cyanButton.layer.borderWidth = 0
            pcView.purpleButton.layer.borderWidth = 0
            
            pcView.yellowButton.layer.borderColor = UIColor.black.cgColor
            
            selectedfromEightColor = .yellow
            
            print("yellow button tapped")
        }
        
        if btnsendtag.tag == 4 {
            
            pcView.redButton.layer.borderWidth = 0
            pcView.orangeButton.layer.borderWidth = 0
            pcView.yellowButton.layer.borderWidth = 0
            pcView.brownButton.layer.borderWidth = 4.0
            pcView.blueButton.layer.borderWidth = 0
            pcView.greenButton.layer.borderWidth = 0
            pcView.cyanButton.layer.borderWidth = 0
            pcView.purpleButton.layer.borderWidth = 0
            
            pcView.brownButton.layer.borderColor = UIColor.black.cgColor
            
            selectedfromEightColor = .brown
            
            print("brown button tapped")
        }
        
        if btnsendtag.tag == 5 {
            
            pcView.redButton.layer.borderWidth = 0
            pcView.orangeButton.layer.borderWidth = 0
            pcView.yellowButton.layer.borderWidth = 0
            pcView.brownButton.layer.borderWidth = 0
            pcView.blueButton.layer.borderWidth = 4.0
            pcView.greenButton.layer.borderWidth = 0
            pcView.cyanButton.layer.borderWidth = 0
            pcView.purpleButton.layer.borderWidth = 0
            
            pcView.blueButton.layer.borderColor = UIColor.black.cgColor
            
            selectedfromEightColor = .blue
            
            print("blue button tapped")
        }
        
        if btnsendtag.tag == 6 {
            
            pcView.redButton.layer.borderWidth = 0
            pcView.orangeButton.layer.borderWidth = 0
            pcView.yellowButton.layer.borderWidth = 0
            pcView.brownButton.layer.borderWidth = 0
            pcView.blueButton.layer.borderWidth = 0
            pcView.greenButton.layer.borderWidth = 4.0
            pcView.cyanButton.layer.borderWidth = 0
            pcView.purpleButton.layer.borderWidth = 0
            
            pcView.greenButton.layer.borderColor = UIColor.black.cgColor
            
            selectedfromEightColor = .green
            
            print("green button tapped")
        }
        
        if btnsendtag.tag == 7 {
            
            pcView.redButton.layer.borderWidth = 0
            pcView.orangeButton.layer.borderWidth = 0
            pcView.yellowButton.layer.borderWidth = 0
            pcView.brownButton.layer.borderWidth = 0
            pcView.blueButton.layer.borderWidth = 0
            pcView.greenButton.layer.borderWidth = 0
            pcView.cyanButton.layer.borderWidth = 4.0
            pcView.purpleButton.layer.borderWidth = 0
            
            pcView.cyanButton.layer.borderColor = UIColor.black.cgColor
            
            selectedfromEightColor = .cyan
            
            print("cyan button tapped")
        }
        
        if btnsendtag.tag == 8 {
            
            pcView.redButton.layer.borderWidth = 0
            pcView.orangeButton.layer.borderWidth = 0
            pcView.yellowButton.layer.borderWidth = 0
            pcView.brownButton.layer.borderWidth = 0
            pcView.blueButton.layer.borderWidth = 0
            pcView.greenButton.layer.borderWidth = 0
            pcView.cyanButton.layer.borderWidth = 0
            pcView.purpleButton.layer.borderWidth = 4.0
            
            pcView.purpleButton.layer.borderColor = UIColor.black.cgColor
            
            selectedfromEightColor = .purple
            
            print("purple button tapped")
        }
    }
    
    func firstRowColor(sender: UIButton!) {
        let btnsendtag: UIButton = sender
        
        
        
        var aBall: Ball = .empty
        var bBall: Ball = .empty
        var cBall: Ball = .empty
        var dBall: Ball = .empty
        
        if btnsendtag.tag == 1 {
            
            
            pcView.a1Button.backgroundColor = selectedfromEightColor.value
            
            
            aBall = selectedfromEightColor
            gameBoard.slots[0].spaces[0] = aBall
            
            
            
        }
        
        if btnsendtag.tag == 2 {
            pcView.b1Button.backgroundColor = selectedfromEightColor.value
            
            bBall = selectedfromEightColor
            gameBoard.slots[0].spaces[1] = bBall
            
        }
        
        if btnsendtag.tag == 3 {
            pcView.c1Button.backgroundColor = selectedfromEightColor.value
            
            cBall = selectedfromEightColor
            gameBoard.slots[0].spaces[2] = cBall
            
            
        }
        
        if btnsendtag.tag == 4 {
            pcView.d1Button.backgroundColor = selectedfromEightColor.value
            
            dBall = selectedfromEightColor
            gameBoard.slots[0].spaces[3] = dBall
            
        }
        
        
        if btnsendtag.tag == 5 {
            
            if pcView.a1Button.backgroundColor != UIColor.clear && pcView.b1Button.backgroundColor != UIColor.clear && pcView.c1Button.backgroundColor != UIColor.clear && pcView.d1Button.backgroundColor != UIColor.clear && pcView.a1Button.backgroundColor != pcView.b1Button.backgroundColor && pcView.a1Button.backgroundColor != pcView.c1Button.backgroundColor && pcView.a1Button.backgroundColor != pcView.d1Button.backgroundColor && pcView.b1Button.backgroundColor != pcView.c1Button.backgroundColor && pcView.b1Button.backgroundColor != pcView.d1Button.backgroundColor && pcView.c1Button.backgroundColor != pcView.d1Button.backgroundColor {
                
                
                print("-----------1-----------")
                print(gameBoard.slots[0])
                
                gameBoard.determineCorrect(slot: gameBoard.slots[0])
                
                print(gameBoard.blackBalls)
                print(gameBoard.whiteBalls)
                
                
                
                firstRowHint(gameBoard.blackBalls, gameBoard.whiteBalls)
                
                
                pcView.a2Button.isEnabled = true
                pcView.b2Button.isEnabled = true
                pcView.c2Button.isEnabled = true
                pcView.d2Button.isEnabled = true
                pcView.ok2Button.isEnabled = true
                pcView.ok2Button.backgroundColor = UIColor.clear
                
                gameOver()
                
                pcView.a1Button.isEnabled = false
                pcView.b1Button.isEnabled = false
                pcView.c1Button.isEnabled = false
                pcView.d1Button.isEnabled = false
                pcView.ok1Button.isEnabled = false
                pcView.ok1Button.backgroundColor = UIColor.darkGray
                
                gameBoard.blackBalls = 0
                gameBoard.whiteBalls = 0
                
            } else {
                
                print("ROW ONE: All four spaces must have different colors and you can't leave a space blank")
                
                let ac = UIAlertController(title: "Please Try Again", message: "All four spaces must have different colors and you can't leave a space blank", preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                
                ac.addAction(action)
                
                present(ac, animated: true, completion: nil)
            }
            
        }
    }
    
                func secondRowColor(sender: UIButton!) {
                    let btnsendtag: UIButton = sender
                    
                    var aBall: Ball = .empty
                    var bBall: Ball = .empty
                    var cBall: Ball = .empty
                    var dBall: Ball = .empty
                    
                    if btnsendtag.tag == 1 {
                        pcView.a2Button.backgroundColor = selectedfromEightColor.value
                        
                        
                        aBall = selectedfromEightColor
                        gameBoard.slots[1].spaces[0] = aBall
                        
                    }
                    
                    if btnsendtag.tag == 2 {
                        pcView.b2Button.backgroundColor = selectedfromEightColor.value
                        
                        bBall = selectedfromEightColor
                        gameBoard.slots[1].spaces[1] = bBall
                        
                        
                    }
                    
                    if btnsendtag.tag == 3 {
                        pcView.c2Button.backgroundColor = selectedfromEightColor.value
                        
                        cBall = selectedfromEightColor
                        gameBoard.slots[1].spaces[2] = cBall
                        
                        
                    }
                    
                    if btnsendtag.tag == 4 {
                        pcView.d2Button.backgroundColor = selectedfromEightColor.value
                        
                        dBall = selectedfromEightColor
                        gameBoard.slots[1].spaces[3] = dBall
                        
                    }
                    
                    
                    if btnsendtag.tag == 5 {
                        
                        if pcView.a2Button.backgroundColor != UIColor.clear && pcView.b2Button.backgroundColor != UIColor.clear && pcView.c2Button.backgroundColor != UIColor.clear && pcView.d2Button.backgroundColor != UIColor.clear && pcView.a2Button.backgroundColor != pcView.b2Button.backgroundColor && pcView.a2Button.backgroundColor != pcView.c2Button.backgroundColor && pcView.a2Button.backgroundColor != pcView.d2Button.backgroundColor && pcView.b2Button.backgroundColor != pcView.c2Button.backgroundColor && pcView.b2Button.backgroundColor != pcView.d2Button.backgroundColor && pcView.c2Button.backgroundColor != pcView.d2Button.backgroundColor {
                            
                            print("-----------2-----------")
                            print(gameBoard.slots[1])
                            
                            gameBoard.determineCorrect(slot: gameBoard.slots[1])
                            
                            print(gameBoard.blackBalls)
                            print(gameBoard.whiteBalls)
                            
                            secondRowHint(gameBoard.blackBalls, gameBoard.whiteBalls)
                            
                            pcView.a3Button.isEnabled = true
                            pcView.b3Button.isEnabled = true
                            pcView.c3Button.isEnabled = true
                            pcView.d3Button.isEnabled = true
                            pcView.ok3Button.isEnabled = true
                            pcView.ok3Button.backgroundColor = UIColor.clear
                            
                            gameOver()
                            
                            pcView.a2Button.isEnabled = false
                            pcView.b2Button.isEnabled = false
                            pcView.c2Button.isEnabled = false
                            pcView.d2Button.isEnabled = false
                            pcView.ok2Button.isEnabled = false
                            pcView.ok2Button.backgroundColor = UIColor.darkGray
                            
                            gameBoard.blackBalls = 0
                            gameBoard.whiteBalls = 0
                            
                            
                        } else {
                            
                            print("ROW TWO: All four spaces must have different colors and you can't leave a space blank")
                            
                            let ac = UIAlertController(title: "Please Try Again", message: "All four spaces must have different colors and you can't leave a space blank", preferredStyle: .alert)
                            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                            
                            ac.addAction(action)
                            
                            present(ac, animated: true, completion: nil)
                        }
                        
                    }
                }
                
                func thirdRowColor(sender: UIButton!) {
                    let btnsendtag: UIButton = sender
                    
                    var aBall: Ball = .empty
                    var bBall: Ball = .empty
                    var cBall: Ball = .empty
                    var dBall: Ball = .empty
                    
                    if btnsendtag.tag == 1 {
                        pcView.a3Button.backgroundColor = selectedfromEightColor.value
                        
                        
                        aBall = selectedfromEightColor
                        gameBoard.slots[2].spaces[0] = aBall
                        
                        
                    }
                    
                    if btnsendtag.tag == 2 {
                        pcView.b3Button.backgroundColor = selectedfromEightColor.value
                        
                        bBall = selectedfromEightColor
                        gameBoard.slots[2].spaces[1] = bBall
                        
                        
                    }
                    
                    if btnsendtag.tag == 3 {
                        pcView.c3Button.backgroundColor = selectedfromEightColor.value
                        
                        cBall = selectedfromEightColor
                        gameBoard.slots[2].spaces[2] = cBall
                        
                        
                    }
                    
                    if btnsendtag.tag == 4 {
                        pcView.d3Button.backgroundColor = selectedfromEightColor.value
                        
                        dBall = selectedfromEightColor
                        gameBoard.slots[2].spaces[3] = dBall
                        
                    }
                    
                    
                    if btnsendtag.tag == 5 {
                        
                        if pcView.a3Button.backgroundColor != UIColor.clear && pcView.b3Button.backgroundColor != UIColor.clear && pcView.c3Button.backgroundColor != UIColor.clear && pcView.d3Button.backgroundColor != UIColor.clear && pcView.a3Button.backgroundColor != pcView.b3Button.backgroundColor && pcView.a3Button.backgroundColor != pcView.c3Button.backgroundColor && pcView.a3Button.backgroundColor != pcView.d3Button.backgroundColor && pcView.b3Button.backgroundColor != pcView.c3Button.backgroundColor && pcView.b3Button.backgroundColor != pcView.d3Button.backgroundColor && pcView.c3Button.backgroundColor != pcView.d3Button.backgroundColor {
                            
                            
                            print("-----------3-----------")
                            print(gameBoard.slots[2])
                            
                            gameBoard.determineCorrect(slot: gameBoard.slots[2])
                            
                            print(gameBoard.blackBalls)
                            print(gameBoard.whiteBalls)
                            
                            
                            thirdRowHint(gameBoard.blackBalls, gameBoard.whiteBalls)
                            
                            pcView.a4Button.isEnabled = true
                            pcView.b4Button.isEnabled = true
                            pcView.c4Button.isEnabled = true
                            pcView.d4Button.isEnabled = true
                            pcView.ok4Button.isEnabled = true
                            pcView.ok4Button.backgroundColor = UIColor.clear
                            
                            gameOver()
                            
                            pcView.a3Button.isEnabled = false
                            pcView.b3Button.isEnabled = false
                            pcView.c3Button.isEnabled = false
                            pcView.d3Button.isEnabled = false
                            pcView.ok3Button.isEnabled = false
                            pcView.ok3Button.backgroundColor = UIColor.darkGray
                            
                            gameBoard.blackBalls = 0
                            gameBoard.whiteBalls = 0
                            
                            
                        } else {
                            
                            print("ROW THREE: All four spaces must have different colors and you can't leave a space blank")
                            
                            let ac = UIAlertController(title: "Please Try Again", message: "All four spaces must have different colors and you can't leave a space blank", preferredStyle: .alert)
                            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                            
                            ac.addAction(action)
                            
                            present(ac, animated: true, completion: nil)
                        }
                        
                    }
                }
                
                func fourthRowColor(sender: UIButton!) {
                    let btnsendtag: UIButton = sender
                    
                    var aBall: Ball = .empty
                    var bBall: Ball = .empty
                    var cBall: Ball = .empty
                    var dBall: Ball = .empty
                    
                    if btnsendtag.tag == 1 {
                        pcView.a4Button.backgroundColor = selectedfromEightColor.value
                        
                        
                        aBall = selectedfromEightColor
                        gameBoard.slots[3].spaces[0] = aBall
                        
                        
                    }
                    
                    if btnsendtag.tag == 2 {
                        pcView.b4Button.backgroundColor = selectedfromEightColor.value
                        
                        bBall = selectedfromEightColor
                        gameBoard.slots[3].spaces[1] = bBall
                        
                        
                    }
                    
                    if btnsendtag.tag == 3 {
                        pcView.c4Button.backgroundColor = selectedfromEightColor.value
                        
                        cBall = selectedfromEightColor
                        gameBoard.slots[3].spaces[2] = cBall
                        
                        
                    }
                    
                    if btnsendtag.tag == 4 {
                        pcView.d4Button.backgroundColor = selectedfromEightColor.value
                        
                        dBall = selectedfromEightColor
                        gameBoard.slots[3].spaces[3] = dBall
                        
                    }
                    
                    
                    if btnsendtag.tag == 5 {
                        
                        if pcView.a4Button.backgroundColor != UIColor.clear && pcView.b4Button.backgroundColor != UIColor.clear && pcView.c4Button.backgroundColor != UIColor.clear && pcView.d4Button.backgroundColor != UIColor.clear && pcView.a4Button.backgroundColor != pcView.b4Button.backgroundColor && pcView.a4Button.backgroundColor != pcView.c4Button.backgroundColor && pcView.a4Button.backgroundColor != pcView.d4Button.backgroundColor && pcView.b4Button.backgroundColor != pcView.c4Button.backgroundColor && pcView.b4Button.backgroundColor != pcView.d4Button.backgroundColor && pcView.c4Button.backgroundColor != pcView.d4Button.backgroundColor {
                            
                            
                            print("-----------4-----------")
                            print(gameBoard.slots[3])
                            
                            gameBoard.determineCorrect(slot: gameBoard.slots[3])
                            
                            print(gameBoard.blackBalls)
                            print(gameBoard.whiteBalls)
                            
                            fourthRowHint(gameBoard.blackBalls, gameBoard.whiteBalls)
                            
                            pcView.a5Button.isEnabled = true
                            pcView.b5Button.isEnabled = true
                            pcView.c5Button.isEnabled = true
                            pcView.d5Button.isEnabled = true
                            pcView.ok5Button.isEnabled = true
                            pcView.ok5Button.backgroundColor = UIColor.clear
                            
                            gameOver()
                            
                            pcView.a4Button.isEnabled = false
                            pcView.b4Button.isEnabled = false
                            pcView.c4Button.isEnabled = false
                            pcView.d4Button.isEnabled = false
                            pcView.ok4Button.isEnabled = false
                            pcView.ok4Button.backgroundColor = UIColor.darkGray
                            
                            gameBoard.blackBalls = 0
                            gameBoard.whiteBalls = 0
                            
                            
                        } else {
                            
                            print("ROW FOUR: All four spaces must have different colors and you can't leave a space blank")
                            
                            let ac = UIAlertController(title: "Please Try Again", message: "All four spaces must have different colors and you can't leave a space blank", preferredStyle: .alert)
                            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                            
                            ac.addAction(action)
                            
                            present(ac, animated: true, completion: nil)
                        }
                        
                    }
                }
                
                func fifthRowColor(sender: UIButton!) {
                    let btnsendtag: UIButton = sender
                    
                    var aBall: Ball = .empty
                    var bBall: Ball = .empty
                    var cBall: Ball = .empty
                    var dBall: Ball = .empty
                    
                    if btnsendtag.tag == 1 {
                        pcView.a5Button.backgroundColor = selectedfromEightColor.value
                        
                        
                        aBall = selectedfromEightColor
                        gameBoard.slots[4].spaces[0] = aBall
                        
                        
                    }
                    
                    if btnsendtag.tag == 2 {
                        pcView.b5Button.backgroundColor = selectedfromEightColor.value
                        
                        bBall = selectedfromEightColor
                        gameBoard.slots[4].spaces[1] = bBall
                        
                        
                    }
                    
                    if btnsendtag.tag == 3 {
                        pcView.c5Button.backgroundColor = selectedfromEightColor.value
                        
                        cBall = selectedfromEightColor
                        gameBoard.slots[4].spaces[2] = cBall
                        
                        
                    }
                    
                    if btnsendtag.tag == 4 {
                        pcView.d5Button.backgroundColor = selectedfromEightColor.value
                        
                        dBall = selectedfromEightColor
                        gameBoard.slots[4].spaces[3] = dBall
                        
                        
                    }
                    
                    
                    if btnsendtag.tag == 5 {
                        
                        if pcView.a5Button.backgroundColor != UIColor.clear && pcView.b5Button.backgroundColor != UIColor.clear && pcView.c5Button.backgroundColor != UIColor.clear && pcView.d5Button.backgroundColor != UIColor.clear && pcView.a5Button.backgroundColor != pcView.b5Button.backgroundColor && pcView.a5Button.backgroundColor != pcView.c5Button.backgroundColor && pcView.a5Button.backgroundColor != pcView.d5Button.backgroundColor && pcView.b5Button.backgroundColor != pcView.c5Button.backgroundColor && pcView.b5Button.backgroundColor != pcView.d5Button.backgroundColor && pcView.c5Button.backgroundColor != pcView.d5Button.backgroundColor {
                            
                            
                            print("-----------5-----------")
                            print(gameBoard.slots[4])
                            
                            gameBoard.determineCorrect(slot: gameBoard.slots[4])
                            
                            print(gameBoard.blackBalls)
                            print(gameBoard.whiteBalls)
                            
                            fifthRowHint(gameBoard.blackBalls, gameBoard.whiteBalls)
                            
                            pcView.a6Button.isEnabled = true
                            pcView.b6Button.isEnabled = true
                            pcView.c6Button.isEnabled = true
                            pcView.d6Button.isEnabled = true
                            pcView.ok6Button.isEnabled = true
                            pcView.ok6Button.backgroundColor = UIColor.clear
                            
                            gameOver()
                            
                            pcView.a5Button.isEnabled = false
                            pcView.b5Button.isEnabled = false
                            pcView.c5Button.isEnabled = false
                            pcView.d5Button.isEnabled = false
                            pcView.ok5Button.isEnabled = false
                            pcView.ok5Button.backgroundColor = UIColor.darkGray
                            
                            gameBoard.blackBalls = 0
                            gameBoard.whiteBalls = 0
                            
                            
                        } else {
                            
                            print("ROW FIVE: All four spaces must have different colors and you can't leave a space blank")
                            
                            let ac = UIAlertController(title: "Please Try Again", message: "All four spaces must have different colors and you can't leave a space blank", preferredStyle: .alert)
                            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                            
                            ac.addAction(action)
                            
                            present(ac, animated: true, completion: nil)
                        }
                        
                    }
                }
                
                func sixthRowColor(sender: UIButton!) {
                    let btnsendtag: UIButton = sender
                    
                    var aBall: Ball = .empty
                    var bBall: Ball = .empty
                    var cBall: Ball = .empty
                    var dBall: Ball = .empty
                    
                    if btnsendtag.tag == 1 {
                        pcView.a6Button.backgroundColor = selectedfromEightColor.value
                        
                        
                        aBall = selectedfromEightColor
                        gameBoard.slots[5].spaces[0] = aBall
                        
                        
                    }
                    
                    if btnsendtag.tag == 2 {
                        pcView.b6Button.backgroundColor = selectedfromEightColor.value
                        
                        bBall = selectedfromEightColor
                        gameBoard.slots[5].spaces[1] = bBall
                        
                        
                    }
                    
                    if btnsendtag.tag == 3 {
                        pcView.c6Button.backgroundColor = selectedfromEightColor.value
                        
                        cBall = selectedfromEightColor
                        gameBoard.slots[5].spaces[2] = cBall
                        
                        
                    }
                    
                    if btnsendtag.tag == 4 {
                        pcView.d6Button.backgroundColor = selectedfromEightColor.value
                        
                        dBall = selectedfromEightColor
                        gameBoard.slots[5].spaces[3] = dBall
                        
                    }
                    
                    
                    if btnsendtag.tag == 5 {
                        
                        if pcView.a6Button.backgroundColor != UIColor.clear && pcView.b6Button.backgroundColor != UIColor.clear && pcView.c6Button.backgroundColor != UIColor.clear && pcView.d6Button.backgroundColor != UIColor.clear && pcView.a6Button.backgroundColor != pcView.b6Button.backgroundColor && pcView.a6Button.backgroundColor != pcView.c6Button.backgroundColor && pcView.a6Button.backgroundColor != pcView.d6Button.backgroundColor && pcView.b6Button.backgroundColor != pcView.c6Button.backgroundColor && pcView.b6Button.backgroundColor != pcView.d6Button.backgroundColor && pcView.c6Button.backgroundColor != pcView.d6Button.backgroundColor {
                            
                            
                            print("-----------6-----------")
                            print(gameBoard.slots[5])
                            
                            gameBoard.determineCorrect(slot: gameBoard.slots[5])
                            
                            print(gameBoard.blackBalls)
                            print(gameBoard.whiteBalls)
                            
                            sixthRowHint(gameBoard.blackBalls, gameBoard.whiteBalls)
                            
                            pcView.a7Button.isEnabled = true
                            pcView.b7Button.isEnabled = true
                            pcView.c7Button.isEnabled = true
                            pcView.d7Button.isEnabled = true
                            pcView.ok7Button.isEnabled = true
                            pcView.ok7Button.backgroundColor = UIColor.clear
                            
                            gameOver()
                            
                            pcView.a6Button.isEnabled = false
                            pcView.b6Button.isEnabled = false
                            pcView.c6Button.isEnabled = false
                            pcView.d6Button.isEnabled = false
                            pcView.ok6Button.isEnabled = false
                            pcView.ok6Button.backgroundColor = UIColor.darkGray
                            gameBoard.blackBalls = 0
                            gameBoard.whiteBalls = 0
                            
                            
                        } else {
                            
                            print("ROW SIX: All four spaces must have different colors and you can't leave a space blank")
                            
                            let ac = UIAlertController(title: "Please Try Again", message: "All four spaces must have different colors and you can't leave a space blank", preferredStyle: .alert)
                            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                            
                            ac.addAction(action)
                            
                            present(ac, animated: true, completion: nil)
                        }
                        
                    }
                }
                
                func seventhRowColor(sender: UIButton!) {
                    let btnsendtag: UIButton = sender
                    
                    var aBall: Ball = .empty
                    var bBall: Ball = .empty
                    var cBall: Ball = .empty
                    var dBall: Ball = .empty
                    
                    if btnsendtag.tag == 1 {
                        pcView.a7Button.backgroundColor = selectedfromEightColor.value
                        
                        
                        aBall = selectedfromEightColor
                        gameBoard.slots[6].spaces[0] = aBall
                        
                    }
                    
                    if btnsendtag.tag == 2 {
                        pcView.b7Button.backgroundColor = selectedfromEightColor.value
                        
                        bBall = selectedfromEightColor
                        gameBoard.slots[6].spaces[1] = bBall
                        
                        
                    }
                    
                    if btnsendtag.tag == 3 {
                        pcView.c7Button.backgroundColor = selectedfromEightColor.value
                        
                        cBall = selectedfromEightColor
                        gameBoard.slots[6].spaces[2] = cBall
                        
                        
                    }
                    
                    if btnsendtag.tag == 4 {
                        pcView.d7Button.backgroundColor = selectedfromEightColor.value
                        
                        dBall = selectedfromEightColor
                        gameBoard.slots[6].spaces[3] = dBall
                        
                    }
                    
                    
                    if btnsendtag.tag == 5 {
                        
                        if pcView.a7Button.backgroundColor != UIColor.clear && pcView.b7Button.backgroundColor != UIColor.clear && pcView.c7Button.backgroundColor != UIColor.clear && pcView.d7Button.backgroundColor != UIColor.clear && pcView.a7Button.backgroundColor != pcView.b7Button.backgroundColor && pcView.a7Button.backgroundColor != pcView.c7Button.backgroundColor && pcView.a7Button.backgroundColor != pcView.d7Button.backgroundColor && pcView.b7Button.backgroundColor != pcView.c7Button.backgroundColor && pcView.b7Button.backgroundColor != pcView.d7Button.backgroundColor && pcView.c7Button.backgroundColor != pcView.d7Button.backgroundColor {
                            
                            print("-----------7-----------")
                            print(gameBoard.slots[6])
                            
                            gameBoard.determineCorrect(slot: gameBoard.slots[6])
                            
                            print(gameBoard.blackBalls)
                            print(gameBoard.whiteBalls)
                            
                            seventhRowHint(gameBoard.blackBalls, gameBoard.whiteBalls)
                            
                            
                            
                            pcView.a8Button.isEnabled = true
                            pcView.b8Button.isEnabled = true
                            pcView.c8Button.isEnabled = true
                            pcView.d8Button.isEnabled = true
                            pcView.ok8Button.isEnabled = true
                            pcView.ok8Button.backgroundColor = UIColor.clear
                            
                            gameOver()
                            
                            pcView.a7Button.isEnabled = false
                            pcView.b7Button.isEnabled = false
                            pcView.c7Button.isEnabled = false
                            pcView.d7Button.isEnabled = false
                            pcView.ok7Button.isEnabled = false
                            pcView.ok7Button.backgroundColor = UIColor.darkGray
                            
                            gameBoard.blackBalls = 0
                            gameBoard.whiteBalls = 0
                            
                        
                            
                        } else {
                            
                            print("ROW SEVEN: All four spaces must have different colors and you can't leave a space blank")
                            
                            let ac = UIAlertController(title: "Please Try Again", message: "All four spaces must have different colors and you can't leave a space blank", preferredStyle: .alert)
                            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                            
                            ac.addAction(action)
                            
                            present(ac, animated: true, completion: nil)
                        }
                        
                    }
                }
                
                func eighthRowColor(sender: UIButton!) {
                    let btnsendtag: UIButton = sender
                    
                    var aBall: Ball = .empty
                    var bBall: Ball = .empty
                    var cBall: Ball = .empty
                    var dBall: Ball = .empty
                    
                    if btnsendtag.tag == 1 {
                        pcView.a8Button.backgroundColor = selectedfromEightColor.value
                        
                        
                        aBall = selectedfromEightColor
                        gameBoard.slots[7].spaces[0] = aBall
                        
                        
                    }
                    
                    if btnsendtag.tag == 2 {
                        pcView.b8Button.backgroundColor = selectedfromEightColor.value
                        
                        bBall = selectedfromEightColor
                        gameBoard.slots[7].spaces[1] = bBall
                        
                        
                    }
                    
                    if btnsendtag.tag == 3 {
                        pcView.c8Button.backgroundColor = selectedfromEightColor.value
                        
                        cBall = selectedfromEightColor
                        gameBoard.slots[7].spaces[2] = cBall
                        
                        
                    }
                    
                    if btnsendtag.tag == 4 {
                        pcView.d8Button.backgroundColor = selectedfromEightColor.value
                        
                        dBall = selectedfromEightColor
                        gameBoard.slots[7].spaces[3] = dBall
                        
                    }
                    
                    
                    if btnsendtag.tag == 5 {
                        
                        if pcView.a8Button.backgroundColor != UIColor.clear && pcView.b8Button.backgroundColor != UIColor.clear && pcView.c8Button.backgroundColor != UIColor.clear && pcView.d8Button.backgroundColor != UIColor.clear && pcView.a8Button.backgroundColor != pcView.b8Button.backgroundColor && pcView.a8Button.backgroundColor != pcView.c8Button.backgroundColor && pcView.a8Button.backgroundColor != pcView.d8Button.backgroundColor && pcView.b8Button.backgroundColor != pcView.c8Button.backgroundColor && pcView.b8Button.backgroundColor != pcView.d8Button.backgroundColor && pcView.c8Button.backgroundColor != pcView.d8Button.backgroundColor {
                            
                            
                            print("-----------8-----------")
                            print(gameBoard.slots[7])
                            
                            gameBoard.determineCorrect(slot: gameBoard.slots[7])
                            
                            print(gameBoard.blackBalls)
                            print(gameBoard.whiteBalls)
            
                            
                            eighthRowHint(gameBoard.blackBalls, gameBoard.whiteBalls)
                            
                        
                            pcView.a8Button.isEnabled = false
                            pcView.b8Button.isEnabled = false
                            pcView.c8Button.isEnabled = false
                            pcView.d8Button.isEnabled = false
                            pcView.ok8Button.isEnabled = false
                            pcView.ok8Button.backgroundColor = UIColor.darkGray
                            
                            gameOver()
                            
                            if gameBoard.blackBalls != 4 {
                                
                                
                                pcView.redButton.isEnabled = false
                                pcView.redButton.backgroundColor = UIColor.lightGray
                                pcView.orangeButton.isEnabled = false
                                pcView.orangeButton.backgroundColor = UIColor.lightGray
                                pcView.cyanButton.isEnabled = false
                                pcView.cyanButton.backgroundColor = UIColor.lightGray
                                pcView.purpleButton.isEnabled = false
                                pcView.purpleButton.backgroundColor = UIColor.lightGray
                                
                                pcView.yellowButton.isEnabled = false
                                pcView.yellowButton.backgroundColor = gameBoard.fourBalls[0].value
                                pcView.greenButton.isEnabled = false
                                pcView.greenButton.backgroundColor = gameBoard.fourBalls[1].value
                                pcView.brownButton.isEnabled = false
                                pcView.brownButton.backgroundColor = gameBoard.fourBalls[2].value
                                pcView.blueButton.isEnabled = false
                                pcView.blueButton.backgroundColor = gameBoard.fourBalls[3].value
                                
                                pcView.yellowButton.layer.borderWidth = 4.0
                                pcView.greenButton.layer.borderWidth = 4.0
                                pcView.brownButton.layer.borderWidth = 4.0
                                pcView.blueButton.layer.borderWidth = 4.0
                                pcView.redButton.layer.borderWidth = 0
                                pcView.orangeButton.layer.borderWidth = 0
                                pcView.cyanButton.layer.borderWidth = 0
                                pcView.purpleButton.layer.borderWidth = 0
                                
                                pcView.yellowButton.layer.borderColor = UIColor.black.cgColor
                                pcView.greenButton.layer.borderColor = UIColor.black.cgColor
                                pcView.brownButton.layer.borderColor = UIColor.black.cgColor
                                pcView.blueButton.layer.borderColor = UIColor.black.cgColor
                                
                                let ac = UIAlertController(title: "GAME OVER", message: "The Correct Color Code is Below.", preferredStyle: .alert)
                                let action = UIAlertAction(title: "PLAY AGAIN", style: .default, handler: gameOptions)
                                
                                ac.addAction(action)
                                
                                present(ac, animated: true, completion: nil)
                            }
                            
                            
                        } else {
                            
                            print("ROW EIGHT: All four spaces must have different colors and you can't leave a space blank")
                            
                            let ac = UIAlertController(title: "Please Try Again", message: "All four spaces must have different colors and you can't leave a space blank", preferredStyle: .alert)
                            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                            
                            ac.addAction(action)
                            
                            present(ac, animated: true, completion: nil)
                        }
                        
                    }
                }
    
    
    func firstRowHint(_ blackBalls: Int,_ whiteBalls: Int) {
        
        if blackBalls == 4  && whiteBalls == 0 {
            pcView.a1Dot.backgroundColor = UIColor.black
            pcView.b1Dot.backgroundColor = UIColor.black
            pcView.c1Dot.backgroundColor = UIColor.black
            pcView.d1Dot.backgroundColor = UIColor.black
        }
        
        if whiteBalls == 4 && blackBalls == 0 {
            pcView.a1Dot.backgroundColor = UIColor.white
            pcView.b1Dot.backgroundColor = UIColor.white
            pcView.c1Dot.backgroundColor = UIColor.white
            pcView.d1Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 3 && whiteBalls == 0 {
            pcView.a1Dot.backgroundColor = UIColor.black
            pcView.b1Dot.backgroundColor = UIColor.black
            pcView.c1Dot.backgroundColor = UIColor.black
            
        }
        
        
        if whiteBalls == 3 && blackBalls == 0 {
            pcView.a1Dot.backgroundColor = UIColor.white
            pcView.b1Dot.backgroundColor = UIColor.white
            pcView.c1Dot.backgroundColor = UIColor.white
            
        }
        
        if whiteBalls == 3 && blackBalls == 1 {
            pcView.a1Dot.backgroundColor = UIColor.black
            pcView.b1Dot.backgroundColor = UIColor.white
            pcView.c1Dot.backgroundColor = UIColor.white
            pcView.d1Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 2 && whiteBalls == 0 {
            pcView.a1Dot.backgroundColor = UIColor.black
            pcView.b1Dot.backgroundColor = UIColor.black
        }
        
        if whiteBalls == 2 && blackBalls == 0 {
            pcView.a1Dot.backgroundColor = UIColor.white
            pcView.b1Dot.backgroundColor = UIColor.white
            
        }
        
        if whiteBalls == 2 && blackBalls == 2 {
            pcView.a1Dot.backgroundColor = UIColor.black
            pcView.b1Dot.backgroundColor = UIColor.black
            pcView.c1Dot.backgroundColor = UIColor.white
            pcView.d1Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 1 && whiteBalls == 0 {
            pcView.b1Dot.backgroundColor = UIColor.black
            
        }
        
        if whiteBalls == 1 && blackBalls == 0 {
            pcView.b1Dot.backgroundColor = UIColor.white
            
        }
        
        if blackBalls == 2 && whiteBalls == 1 {
            pcView.a1Dot.backgroundColor = UIColor.black
            pcView.b1Dot.backgroundColor = UIColor.black
            pcView.c1Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 1 && whiteBalls == 2 {
            pcView.a1Dot.backgroundColor = UIColor.black
            pcView.d1Dot.backgroundColor = UIColor.white
            pcView.c1Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 1 && whiteBalls == 1 {
            pcView.b1Dot.backgroundColor = UIColor.black
            pcView.c1Dot.backgroundColor = UIColor.white
        }
        
    }
    
    func secondRowHint(_ blackBalls: Int,_ whiteBalls: Int) {
        
        if blackBalls == 4  && whiteBalls == 0 {
            pcView.a2Dot.backgroundColor = UIColor.black
            pcView.b2Dot.backgroundColor = UIColor.black
            pcView.c2Dot.backgroundColor = UIColor.black
            pcView.d2Dot.backgroundColor = UIColor.black
        }
        
        if whiteBalls == 4 && blackBalls == 0 {
            pcView.a2Dot.backgroundColor = UIColor.white
            pcView.b2Dot.backgroundColor = UIColor.white
            pcView.c2Dot.backgroundColor = UIColor.white
            pcView.d2Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 3 && whiteBalls == 0{
            pcView.a2Dot.backgroundColor = UIColor.black
            pcView.b2Dot.backgroundColor = UIColor.black
            pcView.c2Dot.backgroundColor = UIColor.black
            
        }
        
        if whiteBalls == 3 && blackBalls == 0 {
            pcView.a2Dot.backgroundColor = UIColor.white
            pcView.b2Dot.backgroundColor = UIColor.white
            pcView.c2Dot.backgroundColor = UIColor.white
            
        }
        
        if whiteBalls == 3 && blackBalls == 1 {
            pcView.a2Dot.backgroundColor = UIColor.black
            pcView.b2Dot.backgroundColor = UIColor.white
            pcView.c2Dot.backgroundColor = UIColor.white
            pcView.d2Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 2 && whiteBalls == 0 {
            pcView.a2Dot.backgroundColor = UIColor.black
            pcView.b2Dot.backgroundColor = UIColor.black
        }
        
        if whiteBalls == 2 && blackBalls == 0 {
            pcView.a2Dot.backgroundColor = UIColor.white
            pcView.b2Dot.backgroundColor = UIColor.white
            
        }
        
        if whiteBalls == 2 && blackBalls == 2 {
            pcView.a2Dot.backgroundColor = UIColor.black
            pcView.b2Dot.backgroundColor = UIColor.black
            pcView.c2Dot.backgroundColor = UIColor.white
            pcView.d2Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 1 && whiteBalls == 0 {
            pcView.b2Dot.backgroundColor = UIColor.black
            
            
        }
        
        if whiteBalls == 1 && blackBalls == 0 {
            pcView.b2Dot.backgroundColor = UIColor.white
            
            
        }
        
        if blackBalls == 2 && whiteBalls == 1 {
            pcView.a2Dot.backgroundColor = UIColor.black
            pcView.b2Dot.backgroundColor = UIColor.black
            pcView.c2Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 1 && whiteBalls == 2 {
            pcView.a2Dot.backgroundColor = UIColor.black
            pcView.d2Dot.backgroundColor = UIColor.white
            pcView.c2Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 1 && whiteBalls == 1 {
            pcView.b2Dot.backgroundColor = UIColor.black
            pcView.c2Dot.backgroundColor = UIColor.white
        }
        
    }
    
    func thirdRowHint(_ blackBalls: Int,_ whiteBalls: Int) {
        
        if blackBalls == 4  && whiteBalls == 0 {
            
            pcView.a3Dot.backgroundColor = UIColor.black
            pcView.b3Dot.backgroundColor = UIColor.black
            pcView.c3Dot.backgroundColor = UIColor.black
            pcView.d3Dot.backgroundColor = UIColor.black
        }
        
        if whiteBalls == 4 && blackBalls == 0 {
            pcView.a3Dot.backgroundColor = UIColor.white
            pcView.b3Dot.backgroundColor = UIColor.white
            pcView.c3Dot.backgroundColor = UIColor.white
            pcView.d3Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 3 && whiteBalls == 0 {
            pcView.a3Dot.backgroundColor = UIColor.black
            pcView.b3Dot.backgroundColor = UIColor.black
            pcView.c3Dot.backgroundColor = UIColor.black
            
        }
        
        if whiteBalls == 3 && blackBalls == 0 {
            pcView.a3Dot.backgroundColor = UIColor.white
            pcView.b3Dot.backgroundColor = UIColor.white
            pcView.c3Dot.backgroundColor = UIColor.white
            
        }
        
        if whiteBalls == 3 && blackBalls == 1 {
            pcView.a3Dot.backgroundColor = UIColor.black
            pcView.b3Dot.backgroundColor = UIColor.white
            pcView.c3Dot.backgroundColor = UIColor.white
            pcView.d3Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 2 && whiteBalls == 0 {
            pcView.a3Dot.backgroundColor = UIColor.black
            pcView.b3Dot.backgroundColor = UIColor.black
        }
        
        if whiteBalls == 2 && blackBalls == 0 {
            pcView.a3Dot.backgroundColor = UIColor.white
            pcView.b3Dot.backgroundColor = UIColor.white
            
        }
        
        if whiteBalls == 2 && blackBalls == 2 {
            pcView.a3Dot.backgroundColor = UIColor.black
            pcView.b3Dot.backgroundColor = UIColor.black
            pcView.c3Dot.backgroundColor = UIColor.white
            pcView.d3Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 1 && whiteBalls == 0 {
            pcView.b3Dot.backgroundColor = UIColor.black
            
            
        }
        
        if whiteBalls == 1 && blackBalls == 0 {
            pcView.b3Dot.backgroundColor = UIColor.white
            
            
        }
        
        if blackBalls == 2 && whiteBalls == 1 {
            pcView.a3Dot.backgroundColor = UIColor.black
            pcView.b3Dot.backgroundColor = UIColor.black
            pcView.c3Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 1 && whiteBalls == 2 {
            pcView.a3Dot.backgroundColor = UIColor.black
            pcView.d3Dot.backgroundColor = UIColor.white
            pcView.c3Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 1 && whiteBalls == 1 {
            pcView.b3Dot.backgroundColor = UIColor.black
            pcView.c3Dot.backgroundColor = UIColor.white
        }
        
        
    }
    
    func fourthRowHint(_ blackBalls: Int,_ whiteBalls: Int) {
        
        if blackBalls == 4  && whiteBalls == 0 {
            pcView.a4Dot.backgroundColor = UIColor.black
            pcView.b4Dot.backgroundColor = UIColor.black
            pcView.c4Dot.backgroundColor = UIColor.black
            pcView.d4Dot.backgroundColor = UIColor.black
        }
        
        if whiteBalls == 4 && blackBalls == 0 {
            pcView.a4Dot.backgroundColor = UIColor.white
            pcView.b4Dot.backgroundColor = UIColor.white
            pcView.c4Dot.backgroundColor = UIColor.white
            pcView.d4Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 3 && whiteBalls == 0 {
            pcView.a4Dot.backgroundColor = UIColor.black
            pcView.b4Dot.backgroundColor = UIColor.black
            pcView.c4Dot.backgroundColor = UIColor.black
            
        }
        
        if whiteBalls == 3 && blackBalls == 0 {
            pcView.a4Dot.backgroundColor = UIColor.white
            pcView.b4Dot.backgroundColor = UIColor.white
            pcView.c4Dot.backgroundColor = UIColor.white
            
        }
        
        if whiteBalls == 3 && blackBalls == 1 {
            pcView.a4Dot.backgroundColor = UIColor.black
            pcView.b4Dot.backgroundColor = UIColor.white
            pcView.c4Dot.backgroundColor = UIColor.white
            pcView.d4Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 2 && whiteBalls == 0 {
            pcView.a4Dot.backgroundColor = UIColor.black
            pcView.b4Dot.backgroundColor = UIColor.black
        }
        
        if whiteBalls == 2 && blackBalls == 0 {
            pcView.a4Dot.backgroundColor = UIColor.white
            pcView.b4Dot.backgroundColor = UIColor.white
            
        }
        
        if whiteBalls == 2 && blackBalls == 2 {
            pcView.a4Dot.backgroundColor = UIColor.black
            pcView.b4Dot.backgroundColor = UIColor.black
            pcView.c4Dot.backgroundColor = UIColor.white
            pcView.d4Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 1 && whiteBalls == 0 {
            pcView.b4Dot.backgroundColor = UIColor.black
            
            
        }
        
        if whiteBalls == 1 && blackBalls == 0 {
            pcView.b4Dot.backgroundColor = UIColor.white
            
            
        }
        
        if blackBalls == 2 && whiteBalls == 1 {
            pcView.a4Dot.backgroundColor = UIColor.black
            pcView.b4Dot.backgroundColor = UIColor.black
            pcView.c4Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 1 && whiteBalls == 2 {
            pcView.a4Dot.backgroundColor = UIColor.black
            pcView.d4Dot.backgroundColor = UIColor.white
            pcView.c4Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 1 && whiteBalls == 1 {
            pcView.b4Dot.backgroundColor = UIColor.black
            pcView.c4Dot.backgroundColor = UIColor.white
        }
        
        
    }
    
    
    func fifthRowHint(_ blackBalls: Int,_ whiteBalls: Int) {
        
        if blackBalls == 4  && whiteBalls == 0 {
            pcView.a5Dot.backgroundColor = UIColor.black
            pcView.b5Dot.backgroundColor = UIColor.black
            pcView.c5Dot.backgroundColor = UIColor.black
            pcView.d5Dot.backgroundColor = UIColor.black
        }
        
        if whiteBalls == 4 && blackBalls == 0 {
            pcView.a5Dot.backgroundColor = UIColor.white
            pcView.b5Dot.backgroundColor = UIColor.white
            pcView.c5Dot.backgroundColor = UIColor.white
            pcView.d5Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 3 && whiteBalls == 0 {
            pcView.a5Dot.backgroundColor = UIColor.black
            pcView.b5Dot.backgroundColor = UIColor.black
            pcView.c5Dot.backgroundColor = UIColor.black
            
        }
        
        if whiteBalls == 3 && blackBalls == 0 {
            pcView.a5Dot.backgroundColor = UIColor.white
            pcView.b5Dot.backgroundColor = UIColor.white
            pcView.c5Dot.backgroundColor = UIColor.white
            
        }
        
        if whiteBalls == 3 && blackBalls == 1 {
            pcView.a5Dot.backgroundColor = UIColor.black
            pcView.b5Dot.backgroundColor = UIColor.white
            pcView.c5Dot.backgroundColor = UIColor.white
            pcView.d5Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 2 && whiteBalls == 0 {
            pcView.a5Dot.backgroundColor = UIColor.black
            pcView.b5Dot.backgroundColor = UIColor.black
        }
        
        if whiteBalls == 2 && blackBalls == 0 {
            pcView.a5Dot.backgroundColor = UIColor.white
            pcView.b5Dot.backgroundColor = UIColor.white
            
        }
        
        if whiteBalls == 2 && blackBalls == 2 {
            pcView.a5Dot.backgroundColor = UIColor.black
            pcView.b5Dot.backgroundColor = UIColor.black
            pcView.c5Dot.backgroundColor = UIColor.white
            pcView.d5Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 1 && whiteBalls == 0 {
            pcView.b5Dot.backgroundColor = UIColor.black
            
            
        }
        
        if whiteBalls == 1 && blackBalls == 0 {
            pcView.b5Dot.backgroundColor = UIColor.white
            
            
        }
        
        
        if blackBalls == 2 && whiteBalls == 1 {
            pcView.a5Dot.backgroundColor = UIColor.black
            pcView.b5Dot.backgroundColor = UIColor.black
            pcView.c5Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 1 && whiteBalls == 2 {
            pcView.a5Dot.backgroundColor = UIColor.black
            pcView.d5Dot.backgroundColor = UIColor.white
            pcView.c5Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 1 && whiteBalls == 1 {
            pcView.b5Dot.backgroundColor = UIColor.black
            pcView.c5Dot.backgroundColor = UIColor.white
        }
        
        
    }
    
    func sixthRowHint(_ blackBalls: Int,_ whiteBalls: Int) {
        
        if blackBalls == 4  && whiteBalls == 0 {
            pcView.a6Dot.backgroundColor = UIColor.black
            pcView.b6Dot.backgroundColor = UIColor.black
            pcView.c6Dot.backgroundColor = UIColor.black
            pcView.d6Dot.backgroundColor = UIColor.black
        }
        
        if whiteBalls == 4 && blackBalls == 0 {
            pcView.a6Dot.backgroundColor = UIColor.white
            pcView.b6Dot.backgroundColor = UIColor.white
            pcView.c6Dot.backgroundColor = UIColor.white
            pcView.d6Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 3 && whiteBalls == 0 {
            pcView.a6Dot.backgroundColor = UIColor.black
            pcView.b6Dot.backgroundColor = UIColor.black
            pcView.c6Dot.backgroundColor = UIColor.black
            
        }
        
        if whiteBalls == 3 && blackBalls == 0 {
            pcView.a6Dot.backgroundColor = UIColor.white
            pcView.b6Dot.backgroundColor = UIColor.white
            pcView.c6Dot.backgroundColor = UIColor.white
            
        }
        
        if whiteBalls == 3 && blackBalls == 1 {
            pcView.a6Dot.backgroundColor = UIColor.black
            pcView.b6Dot.backgroundColor = UIColor.white
            pcView.c6Dot.backgroundColor = UIColor.white
            pcView.d6Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 2 && whiteBalls == 0 {
            pcView.a6Dot.backgroundColor = UIColor.black
            pcView.b6Dot.backgroundColor = UIColor.black
        }
        
        if whiteBalls == 2 && blackBalls == 0 {
            pcView.a6Dot.backgroundColor = UIColor.white
            pcView.b6Dot.backgroundColor = UIColor.white
            
        }
        
        if whiteBalls == 2 && blackBalls == 2 {
            pcView.a6Dot.backgroundColor = UIColor.black
            pcView.b6Dot.backgroundColor = UIColor.black
            pcView.c6Dot.backgroundColor = UIColor.white
            pcView.d6Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 1 && whiteBalls == 0 {
            pcView.b6Dot.backgroundColor = UIColor.black
            
        }
        
        if whiteBalls == 1 && blackBalls == 0 {
            pcView.b6Dot.backgroundColor = UIColor.white
            
        }
        
        
        if blackBalls == 2 && whiteBalls == 1 {
            pcView.a6Dot.backgroundColor = UIColor.black
            pcView.b6Dot.backgroundColor = UIColor.black
            pcView.c6Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 1 && whiteBalls == 2 {
            pcView.a6Dot.backgroundColor = UIColor.black
            pcView.d6Dot.backgroundColor = UIColor.white
            pcView.c6Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 1 && whiteBalls == 1 {
            pcView.b6Dot.backgroundColor = UIColor.black
            pcView.c6Dot.backgroundColor = UIColor.white
        }
        
        
    }
    
    func seventhRowHint(_ blackBalls: Int,_ whiteBalls: Int) {
        
        if blackBalls == 4  && whiteBalls == 0 {
            pcView.a7Dot.backgroundColor = UIColor.black
            pcView.b7Dot.backgroundColor = UIColor.black
            pcView.c7Dot.backgroundColor = UIColor.black
            pcView.d7Dot.backgroundColor = UIColor.black
        }
        
        if whiteBalls == 4 && blackBalls == 0 {
            pcView.a7Dot.backgroundColor = UIColor.white
            pcView.b7Dot.backgroundColor = UIColor.white
            pcView.c7Dot.backgroundColor = UIColor.white
            pcView.d7Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 3 && whiteBalls == 0 {
            pcView.a7Dot.backgroundColor = UIColor.black
            pcView.b7Dot.backgroundColor = UIColor.black
            pcView.c7Dot.backgroundColor = UIColor.black
            
        }
        
        if whiteBalls == 3 && blackBalls == 0 {
            pcView.a7Dot.backgroundColor = UIColor.white
            pcView.b7Dot.backgroundColor = UIColor.white
            pcView.c7Dot.backgroundColor = UIColor.white
            
        }
        
        if whiteBalls == 3 && blackBalls == 1 {
            pcView.a7Dot.backgroundColor = UIColor.black
            pcView.b7Dot.backgroundColor = UIColor.white
            pcView.c7Dot.backgroundColor = UIColor.white
            pcView.d7Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 2 && whiteBalls == 0 {
            pcView.a7Dot.backgroundColor = UIColor.black
            pcView.b7Dot.backgroundColor = UIColor.black
        }
        
        if whiteBalls == 2 && blackBalls == 0 {
            pcView.a7Dot.backgroundColor = UIColor.white
            pcView.b7Dot.backgroundColor = UIColor.white
            
        }
        
        if whiteBalls == 2 && blackBalls == 2 {
            pcView.a7Dot.backgroundColor = UIColor.black
            pcView.b7Dot.backgroundColor = UIColor.black
            pcView.c7Dot.backgroundColor = UIColor.white
            pcView.d7Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 1 && whiteBalls == 0 {
            pcView.b7Dot.backgroundColor = UIColor.black
            
        }
        
        if whiteBalls == 1 && blackBalls == 0 {
            pcView.b7Dot.backgroundColor = UIColor.white
            
            
        }
        
        
        if blackBalls == 2 && whiteBalls == 1 {
            pcView.a7Dot.backgroundColor = UIColor.black
            pcView.b7Dot.backgroundColor = UIColor.black
            pcView.c7Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 1 && whiteBalls == 2 {
            pcView.a7Dot.backgroundColor = UIColor.black
            pcView.d7Dot.backgroundColor = UIColor.white
            pcView.c7Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 1 && whiteBalls == 1 {
            pcView.b7Dot.backgroundColor = UIColor.black
            pcView.c7Dot.backgroundColor = UIColor.white
        }
        
        
    }
    
    
    func eighthRowHint(_ blackBalls: Int,_ whiteBalls: Int) {
        
        if blackBalls == 4  && whiteBalls == 0 {
            pcView.a8Dot.backgroundColor = UIColor.black
            pcView.b8Dot.backgroundColor = UIColor.black
            pcView.c8Dot.backgroundColor = UIColor.black
            pcView.d8Dot.backgroundColor = UIColor.black
        }
        
        if whiteBalls == 4 && blackBalls == 0 {
            pcView.a8Dot.backgroundColor = UIColor.white
            pcView.b8Dot.backgroundColor = UIColor.white
            pcView.c8Dot.backgroundColor = UIColor.white
            pcView.d8Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 3 && whiteBalls == 0 {
            pcView.a8Dot.backgroundColor = UIColor.black
            pcView.b8Dot.backgroundColor = UIColor.black
            pcView.c8Dot.backgroundColor = UIColor.black
            
        }
        
        if whiteBalls == 3 && blackBalls == 0 {
            pcView.a8Dot.backgroundColor = UIColor.white
            pcView.b8Dot.backgroundColor = UIColor.white
            pcView.c8Dot.backgroundColor = UIColor.white
            
        }
        
        if whiteBalls == 3 && blackBalls == 1 {
            pcView.a8Dot.backgroundColor = UIColor.black
            pcView.b8Dot.backgroundColor = UIColor.white
            pcView.c8Dot.backgroundColor = UIColor.white
            pcView.d8Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 2 && whiteBalls == 0 {
            pcView.a8Dot.backgroundColor = UIColor.black
            pcView.b8Dot.backgroundColor = UIColor.black
        }
        
        if whiteBalls == 2 && blackBalls == 0 {
            pcView.a8Dot.backgroundColor = UIColor.white
            pcView.b8Dot.backgroundColor = UIColor.white
            
        }
        
        if whiteBalls == 2 && blackBalls == 2 {
            pcView.a8Dot.backgroundColor = UIColor.black
            pcView.b8Dot.backgroundColor = UIColor.black
            pcView.c8Dot.backgroundColor = UIColor.white
            pcView.d8Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 1 && whiteBalls == 0 {
            pcView.b8Dot.backgroundColor = UIColor.black
            
        }
        
        if whiteBalls == 1 && blackBalls == 0 {
            pcView.b8Dot.backgroundColor = UIColor.white
            
            
        }
        
        if blackBalls == 2 && whiteBalls == 1 {
            pcView.a8Dot.backgroundColor = UIColor.black
            pcView.b8Dot.backgroundColor = UIColor.black
            pcView.c8Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 1 && whiteBalls == 2 {
            pcView.a8Dot.backgroundColor = UIColor.black
            pcView.d8Dot.backgroundColor = UIColor.white
            pcView.c8Dot.backgroundColor = UIColor.white
        }
        
        if blackBalls == 1 && whiteBalls == 1 {
            pcView.b8Dot.backgroundColor = UIColor.black
            pcView.c8Dot.backgroundColor = UIColor.white
        }
        
        
        
    }
    
    
    
    func gameOver() {
        
        
        if gameBoard.slotIsAWinner() == true {
        
            
            pcView.a2Button.isEnabled = false
            pcView.b2Button.isEnabled = false
            pcView.c2Button.isEnabled = false
            pcView.d2Button.isEnabled = false
            pcView.ok2Button.isEnabled = false
            
            pcView.a3Button.isEnabled = false
            pcView.b3Button.isEnabled = false
            pcView.c3Button.isEnabled = false
            pcView.d3Button.isEnabled = false
            pcView.ok3Button.isEnabled = false
            
            pcView.a4Button.isEnabled = false
            pcView.b4Button.isEnabled = false
            pcView.c4Button.isEnabled = false
            pcView.d4Button.isEnabled = false
            pcView.ok4Button.isEnabled = false
            
            pcView.a5Button.isEnabled = false
            pcView.b5Button.isEnabled = false
            pcView.c5Button.isEnabled = false
            pcView.d5Button.isEnabled = false
            pcView.ok5Button.isEnabled = false
            
            pcView.a6Button.isEnabled = false
            pcView.b6Button.isEnabled = false
            pcView.c6Button.isEnabled = false
            pcView.d6Button.isEnabled = false
            pcView.ok6Button.isEnabled = false
            
            pcView.a7Button.isEnabled = false
            pcView.b7Button.isEnabled = false
            pcView.c7Button.isEnabled = false
            pcView.d7Button.isEnabled = false
            pcView.ok7Button.isEnabled = false
            
            pcView.a8Button.isEnabled = false
            pcView.b8Button.isEnabled = false
            pcView.c8Button.isEnabled = false
            pcView.d8Button.isEnabled = false
            pcView.ok8Button.isEnabled = false
            
            //pcView.redButton.isEnabled = false
            pcView.redButton.backgroundColor = UIColor.lightGray
            pcView.orangeButton.isEnabled = false
            pcView.orangeButton.backgroundColor = UIColor.lightGray
            pcView.cyanButton.isEnabled = false
            pcView.cyanButton.backgroundColor = UIColor.lightGray
            pcView.purpleButton.isEnabled = false
            pcView.purpleButton.backgroundColor = UIColor.lightGray
            
            pcView.yellowButton.isEnabled = false
            pcView.yellowButton.backgroundColor = gameBoard.fourBalls[0].value
            pcView.greenButton.isEnabled = false
            pcView.greenButton.backgroundColor = gameBoard.fourBalls[1].value
            pcView.brownButton.isEnabled = false
            pcView.brownButton.backgroundColor = gameBoard.fourBalls[2].value
            pcView.blueButton.isEnabled = false
            pcView.blueButton.backgroundColor = gameBoard.fourBalls[3].value
            
            pcView.yellowButton.layer.borderWidth = 4.0
            pcView.greenButton.layer.borderWidth = 4.0
            pcView.brownButton.layer.borderWidth = 4.0
            pcView.blueButton.layer.borderWidth = 4.0
            
            pcView.redButton.layer.borderWidth = 0
            pcView.orangeButton.layer.borderWidth = 0
            pcView.cyanButton.layer.borderWidth = 0
            pcView.purpleButton.layer.borderWidth = 0
            
            pcView.yellowButton.layer.borderColor = UIColor.black.cgColor
            pcView.greenButton.layer.borderColor = UIColor.black.cgColor
            pcView.brownButton.layer.borderColor = UIColor.black.cgColor
            pcView.blueButton.layer.borderColor = UIColor.black.cgColor
            
            
            
            let ac = UIAlertController(title: title, message: "YOU WIN!", preferredStyle: .alert)
            let action = UIAlertAction(title: "NEW GAME", style: .default, handler: gameOptions)
            
            ac.addAction(action)
            
            present(ac, animated: true, completion: nil)
            
    }
    }
    
    func gameOptions(action: UIAlertAction!) {
        print("pressed restart button")
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let homeVC = storyboard.instantiateViewController(withIdentifier: "ViewController")
        
        present(homeVC, animated: false, completion: nil)
        return
    }
    
    
    func infoSelect(sender: UIButton!) {
        print("pressed info button")
        
        let ac = UIAlertController(title: "HOW TO PLAY", message: "The computer generates a random code of 4 different colors.  Using the 8 colors provided below, you will have 8 chances to guess the 4 correct colors and the order of the colors.\n\nTo choose a color, tap on the color and then tap where you want to place the color.  Once you have placed 4 different colors in the horizontal row, tap the 'OK' button to continue.\n\nThe computer will show a white dot for each color you have guessed correctly, but is in the wrong position.  The computer will show a black dot for each color that is correct and in the right position.", preferredStyle: .alert)
        let action = UIAlertAction(title: "CLOSE", style: .default, handler: nil)
        
        ac.addAction(action)
        
        present(ac, animated: true, completion: nil)
    }
    
    func menuSelect(sender: UIButton!) {
        print("pressed menu button")
        
        let ac = UIAlertController(title: title, message: "MENU", preferredStyle: .alert)
        let howToAction = UIAlertAction(title: "HOW TO PLAY", style: .default, handler: howToPlay)
        let newGameAction = UIAlertAction(title: "RESTART GAME", style: .default, handler: gameOptions)
        let aboutAction = UIAlertAction(title: "ABOUT", style: .default, handler: aboutGame)
        let closeAction = UIAlertAction(title: "CLOSE", style: .default, handler: nil)
        
        ac.addAction(howToAction)
        ac.addAction(newGameAction)
        ac.addAction(aboutAction)
        ac.addAction(closeAction)
        
        present(ac, animated: true, completion: nil)
        
    }
    
    func howToPlay(action: UIAlertAction!) {
        print("pressed how to play button")
        
        let ac = UIAlertController(title: "HOW TO PLAY", message: "The computer generates a random code of 4 different colors.  Using the 8 colors provided below, you will have 8 chances to guess the 4 correct colors and the order of the colors.\n\nTo choose a color, tap on the color and then tap where you want to place the color.  Once you have placed 4 different colors in the horizontal row, tap the 'OK' button to continue.\n\nThe computer will show a white dot for each color you have guessed correctly, but is in the wrong position.  The computer will show a black dot for each color that is correct and in the right position.", preferredStyle: .alert)
        let action = UIAlertAction(title: "CLOSE", style: .default, handler: nil)
        
        ac.addAction(action)
        
        present(ac, animated: true, completion: nil)
    }
    
    
    func aboutGame(action: UIAlertAction!) {
        print("pressed about button")
        
        let ac = UIAlertController(title: "ABOUT", message: "\n\nVER 1.0\n\n\n-AUTHOR-\n\nAdrian McDaniel\n\n\n-ACKNOWLEDGEMENTS-\n\nThank you to my iOS Mobile Development instructor, TJ Usiyan of the Iron Yard & to paintcodeapp.com for providing the resources to create an awesome UI", preferredStyle: .alert)
        let action = UIAlertAction(title: "CLOSE", style: .default, handler: nil)
        
        ac.addAction(action)
        
        present(ac, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.lightGray
        
        view.addSubview(pcView)
        
        //Color Shuffle
        let shuffledBalls: [Ball] = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: balls) as! [Ball]
        
        print("___________SHUFFLED______________")
        print(shuffledBalls)
        print("___________________________")
        
        let shuffledBalls2: [Ball] = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: shuffledBalls) as! [Ball]
        
        print("___________SHUFFLED2______________")
        print(shuffledBalls2)
        print("___________________________")
        
        let colorCode: [Ball] = [shuffledBalls2[0], shuffledBalls2[1], shuffledBalls2[2], shuffledBalls2[3]]
        print("___________colorCode_____________")
        print(colorCode)
        print("___________________________")
        
        
        gameBoard.fourBalls = colorCode
       
        //Button Targets
        
        pcView.infoButton.addTarget(self, action: #selector(infoSelect), for: .touchUpInside)
        pcView.menuButton.addTarget(self, action: #selector(menuSelect), for: .touchUpInside)
        
        pcView.redButton.addTarget(self, action: #selector(colorSelect), for: .touchUpInside)
        pcView.orangeButton.addTarget(self, action: #selector(colorSelect), for: .touchUpInside)
        pcView.yellowButton.addTarget(self, action: #selector(colorSelect), for: .touchUpInside)
        pcView.brownButton.addTarget(self, action: #selector(colorSelect), for: .touchUpInside)
        pcView.blueButton.addTarget(self, action: #selector(colorSelect), for: .touchUpInside)
        pcView.greenButton.addTarget(self, action: #selector(colorSelect), for: .touchUpInside)
        pcView.cyanButton.addTarget(self, action: #selector(colorSelect), for: .touchUpInside)
        pcView.purpleButton.addTarget(self, action: #selector(colorSelect), for: .touchUpInside)
        
        pcView.a1Button.addTarget(self, action: #selector(firstRowColor), for: .touchUpInside)
        pcView.b1Button.addTarget(self, action: #selector(firstRowColor), for: .touchUpInside)
        pcView.c1Button.addTarget(self, action: #selector(firstRowColor), for: .touchUpInside)
        pcView.d1Button.addTarget(self, action: #selector(firstRowColor), for: .touchUpInside)
        pcView.ok1Button.addTarget(self, action: #selector(firstRowColor), for: .touchUpInside)
        
        pcView.a2Button.addTarget(self, action: #selector(secondRowColor), for: .touchUpInside)
        pcView.b2Button.addTarget(self, action: #selector(secondRowColor), for: .touchUpInside)
        pcView.c2Button.addTarget(self, action: #selector(secondRowColor), for: .touchUpInside)
        pcView.d2Button.addTarget(self, action: #selector(secondRowColor), for: .touchUpInside)
        pcView.ok2Button.addTarget(self, action: #selector(secondRowColor), for: .touchUpInside)
        
        pcView.a3Button.addTarget(self, action: #selector(thirdRowColor), for: .touchUpInside)
        pcView.b3Button.addTarget(self, action: #selector(thirdRowColor), for: .touchUpInside)
        pcView.c3Button.addTarget(self, action: #selector(thirdRowColor), for: .touchUpInside)
        pcView.d3Button.addTarget(self, action: #selector(thirdRowColor), for: .touchUpInside)
        pcView.ok3Button.addTarget(self, action: #selector(thirdRowColor), for: .touchUpInside)
        
        pcView.a4Button.addTarget(self, action: #selector(fourthRowColor), for: .touchUpInside)
        pcView.b4Button.addTarget(self, action: #selector(fourthRowColor), for: .touchUpInside)
        pcView.c4Button.addTarget(self, action: #selector(fourthRowColor), for: .touchUpInside)
        pcView.d4Button.addTarget(self, action: #selector(fourthRowColor), for: .touchUpInside)
        pcView.ok4Button.addTarget(self, action: #selector(fourthRowColor), for: .touchUpInside)
        
        pcView.a5Button.addTarget(self, action: #selector(fifthRowColor), for: .touchUpInside)
        pcView.b5Button.addTarget(self, action: #selector(fifthRowColor), for: .touchUpInside)
        pcView.c5Button.addTarget(self, action: #selector(fifthRowColor), for: .touchUpInside)
        pcView.d5Button.addTarget(self, action: #selector(fifthRowColor), for: .touchUpInside)
        pcView.ok5Button.addTarget(self, action: #selector(fifthRowColor), for: .touchUpInside)
        
        pcView.a6Button.addTarget(self, action: #selector(sixthRowColor), for: .touchUpInside)
        pcView.b6Button.addTarget(self, action: #selector(sixthRowColor), for: .touchUpInside)
        pcView.c6Button.addTarget(self, action: #selector(sixthRowColor), for: .touchUpInside)
        pcView.d6Button.addTarget(self, action: #selector(sixthRowColor), for: .touchUpInside)
        pcView.ok6Button.addTarget(self, action: #selector(sixthRowColor), for: .touchUpInside)
        
        pcView.a7Button.addTarget(self, action: #selector(seventhRowColor), for: .touchUpInside)
        pcView.b7Button.addTarget(self, action: #selector(seventhRowColor), for: .touchUpInside)
        pcView.c7Button.addTarget(self, action: #selector(seventhRowColor), for: .touchUpInside)
        pcView.d7Button.addTarget(self, action: #selector(seventhRowColor), for: .touchUpInside)
        pcView.ok7Button.addTarget(self, action: #selector(seventhRowColor), for: .touchUpInside)
        
        pcView.a8Button.addTarget(self, action: #selector(eighthRowColor), for: .touchUpInside)
        pcView.b8Button.addTarget(self, action: #selector(eighthRowColor), for: .touchUpInside)
        pcView.c8Button.addTarget(self, action: #selector(eighthRowColor), for: .touchUpInside)
        pcView.d8Button.addTarget(self, action: #selector(eighthRowColor), for: .touchUpInside)
        pcView.ok8Button.addTarget(self, action: #selector(eighthRowColor), for: .touchUpInside)
        
        //Button Tags
        
        pcView.redButton.tag = 1
        pcView.orangeButton.tag = 2
        pcView.yellowButton.tag = 3
        pcView.brownButton.tag = 4
        pcView.blueButton.tag = 5
        pcView.greenButton.tag = 6
        pcView.cyanButton.tag = 7
        pcView.purpleButton.tag = 8
        
        pcView.a1Button.tag = 1
        pcView.b1Button.tag = 2
        pcView.c1Button.tag = 3
        pcView.d1Button.tag = 4
        pcView.ok1Button.tag = 5
        
        pcView.a2Button.tag = 1
        pcView.b2Button.tag = 2
        pcView.c2Button.tag = 3
        pcView.d2Button.tag = 4
        pcView.ok2Button.tag = 5
        
        pcView.a3Button.tag = 1
        pcView.b3Button.tag = 2
        pcView.c3Button.tag = 3
        pcView.d3Button.tag = 4
        pcView.ok3Button.tag = 5
        
        pcView.a4Button.tag = 1
        pcView.b4Button.tag = 2
        pcView.c4Button.tag = 3
        pcView.d4Button.tag = 4
        pcView.ok4Button.tag = 5
        
        pcView.a5Button.tag = 1
        pcView.b5Button.tag = 2
        pcView.c5Button.tag = 3
        pcView.d5Button.tag = 4
        pcView.ok5Button.tag = 5
        
        pcView.a6Button.tag = 1
        pcView.b6Button.tag = 2
        pcView.c6Button.tag = 3
        pcView.d6Button.tag = 4
        pcView.ok6Button.tag = 5
        
        pcView.a7Button.tag = 1
        pcView.b7Button.tag = 2
        pcView.c7Button.tag = 3
        pcView.d7Button.tag = 4
        pcView.ok7Button.tag = 5
        
        pcView.a8Button.tag = 1
        pcView.b8Button.tag = 2
        pcView.c8Button.tag = 3
        pcView.d8Button.tag = 4
        pcView.ok8Button.tag = 5
        
        //Button Default Colors
        
        pcView.menuButton.backgroundColor = UIColor.white
        pcView.menuButton.setBackgroundImage(UIImage(named: "menu"), for: .normal)
        
        pcView.redButton.backgroundColor = UIColor.red
        pcView.orangeButton.backgroundColor = UIColor.orange
        pcView.yellowButton.backgroundColor = UIColor.yellow
        pcView.brownButton.backgroundColor = UIColor.brown
        pcView.blueButton.backgroundColor = UIColor.blue
        pcView.greenButton.backgroundColor = UIColor.green
        pcView.cyanButton.backgroundColor = UIColor.cyan
        pcView.purpleButton.backgroundColor = UIColor.purple
        
        pcView.a1Button.backgroundColor = UIColor.clear
        pcView.b1Button.backgroundColor = UIColor.clear
        pcView.c1Button.backgroundColor = UIColor.clear
        pcView.d1Button.backgroundColor = UIColor.clear
        pcView.ok1Button.backgroundColor = UIColor.clear
        
        pcView.a2Button.backgroundColor = UIColor.clear
        pcView.b2Button.backgroundColor = UIColor.clear
        pcView.c2Button.backgroundColor = UIColor.clear
        pcView.d2Button.backgroundColor = UIColor.clear
        pcView.ok2Button.backgroundColor = UIColor.black
        
        pcView.a3Button.backgroundColor = UIColor.clear
        pcView.b3Button.backgroundColor = UIColor.clear
        pcView.c3Button.backgroundColor = UIColor.clear
        pcView.d3Button.backgroundColor = UIColor.clear
        pcView.ok3Button.backgroundColor = UIColor.black
        
        pcView.a4Button.backgroundColor = UIColor.clear
        pcView.b4Button.backgroundColor = UIColor.clear
        pcView.c4Button.backgroundColor = UIColor.clear
        pcView.d4Button.backgroundColor = UIColor.clear
        pcView.ok4Button.backgroundColor = UIColor.black
        
        pcView.a5Button.backgroundColor = UIColor.clear
        pcView.b5Button.backgroundColor = UIColor.clear
        pcView.c5Button.backgroundColor = UIColor.clear
        pcView.d5Button.backgroundColor = UIColor.clear
        pcView.ok5Button.backgroundColor = UIColor.black
        
        pcView.a6Button.backgroundColor = UIColor.clear
        pcView.b6Button.backgroundColor = UIColor.clear
        pcView.c6Button.backgroundColor = UIColor.clear
        pcView.d6Button.backgroundColor = UIColor.clear
        pcView.ok6Button.backgroundColor = UIColor.black
        
        pcView.a7Button.backgroundColor = UIColor.clear
        pcView.b7Button.backgroundColor = UIColor.clear
        pcView.c7Button.backgroundColor = UIColor.clear
        pcView.d7Button.backgroundColor = UIColor.clear
        pcView.ok7Button.backgroundColor = UIColor.black
        
        pcView.a8Button.backgroundColor = UIColor.clear
        pcView.b8Button.backgroundColor = UIColor.clear
        pcView.c8Button.backgroundColor = UIColor.clear
        pcView.d8Button.backgroundColor = UIColor.clear
        pcView.ok8Button.backgroundColor = UIColor.black
        
        
        //////////Dot Background Color //////////
        
        pcView.a1Dot.backgroundColor = UIColor.clear
        pcView.b1Dot.backgroundColor = UIColor.clear
        pcView.c1Dot.backgroundColor = UIColor.clear
        pcView.d1Dot.backgroundColor = UIColor.clear
        
        
        pcView.a2Dot.backgroundColor = UIColor.clear
        pcView.b2Dot.backgroundColor = UIColor.clear
        pcView.c2Dot.backgroundColor = UIColor.clear
        pcView.d2Dot.backgroundColor = UIColor.clear
        
        
        pcView.a3Dot.backgroundColor = UIColor.clear
        pcView.b3Dot.backgroundColor = UIColor.clear
        pcView.c3Dot.backgroundColor = UIColor.clear
        pcView.d3Dot.backgroundColor = UIColor.clear
        
        
        pcView.a4Dot.backgroundColor = UIColor.clear
        pcView.b4Dot.backgroundColor = UIColor.clear
        pcView.c4Dot.backgroundColor = UIColor.clear
        pcView.d4Dot.backgroundColor = UIColor.clear
        
        
        pcView.a5Dot.backgroundColor = UIColor.clear
        pcView.b5Dot.backgroundColor = UIColor.clear
        pcView.c5Dot.backgroundColor = UIColor.clear
        pcView.d5Dot.backgroundColor = UIColor.clear
        
        
        pcView.a6Dot.backgroundColor = UIColor.clear
        pcView.b6Dot.backgroundColor = UIColor.clear
        pcView.c6Dot.backgroundColor = UIColor.clear
        pcView.d6Dot.backgroundColor = UIColor.clear
        
        
        pcView.a7Dot.backgroundColor = UIColor.clear
        pcView.b7Dot.backgroundColor = UIColor.clear
        pcView.c7Dot.backgroundColor = UIColor.clear
        pcView.d7Dot.backgroundColor = UIColor.clear
        
        
        pcView.a8Dot.backgroundColor = UIColor.clear
        pcView.b8Dot.backgroundColor = UIColor.clear
        pcView.c8Dot.backgroundColor = UIColor.clear
        pcView.d8Dot.backgroundColor = UIColor.clear
        
        
        
        
        //Button Default Settings
        
        pcView.a2Button.isEnabled = false
        pcView.b2Button.isEnabled = false
        pcView.c2Button.isEnabled = false
        pcView.d2Button.isEnabled = false
        pcView.ok2Button.isEnabled = false
        
        pcView.a3Button.isEnabled = false
        pcView.b3Button.isEnabled = false
        pcView.c3Button.isEnabled = false
        pcView.d3Button.isEnabled = false
        pcView.ok3Button.isEnabled = false
        
        pcView.a4Button.isEnabled = false
        pcView.b4Button.isEnabled = false
        pcView.c4Button.isEnabled = false
        pcView.d4Button.isEnabled = false
        pcView.ok4Button.isEnabled = false
        
        pcView.a5Button.isEnabled = false
        pcView.b5Button.isEnabled = false
        pcView.c5Button.isEnabled = false
        pcView.d5Button.isEnabled = false
        pcView.ok5Button.isEnabled = false
        
        pcView.a6Button.isEnabled = false
        pcView.b6Button.isEnabled = false
        pcView.c6Button.isEnabled = false
        pcView.d6Button.isEnabled = false
        pcView.ok6Button.isEnabled = false
        
        pcView.a7Button.isEnabled = false
        pcView.b7Button.isEnabled = false
        pcView.c7Button.isEnabled = false
        pcView.d7Button.isEnabled = false
        pcView.ok7Button.isEnabled = false
        
        pcView.a8Button.isEnabled = false
        pcView.b8Button.isEnabled = false
        pcView.c8Button.isEnabled = false
        pcView.d8Button.isEnabled = false
        pcView.ok8Button.isEnabled = false
        
    }
    
    
    
}


