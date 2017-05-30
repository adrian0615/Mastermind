//
//  PCView2.swift
//  Mastermind
//
//  Created by Adrian McDaniel on 5/27/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import UIKit

class PCView2: UIView {
    
    var myStyleKit2 = Mastermind2StyleKit()
    
    
    
    /////////////////////Info Button//////////////////////////
    
    var infoButton = UIButton(frame: CGRect(x: 256, y: 0, width: 33, height: 33))
    
    /////////////////////Menu Button///////////////////////////
    
    var menuButton = UIButton(frame: CGRect(x: 29, y: 0, width: 33, height: 33))
    
    
    //////////////////Button Color Row/////////////////////////
    
    var redButton = UIButton(frame: CGRect(x: 5, y: 497, width: 34, height: 34))
    
    
    var orangeButton = UIButton(frame: CGRect(x: 46, y: 497, width: 34, height: 34))
    
    
    
    var yellowButton = UIButton(frame: CGRect(x: 85, y: 497, width: 34, height: 34))
    
    
    
    var brownButton = UIButton(frame: CGRect(x: 164, y: 497, width: 34, height: 34))
    
    
    
    var blueButton = UIButton(frame: CGRect(x: 203, y: 497, width: 34, height: 34))
    
    
    
    var greenButton = UIButton(frame: CGRect(x: 124, y: 497, width: 34, height: 34))
    
    
    
    var cyanButton = UIButton(frame: CGRect(x: 243, y: 497, width: 34, height: 34))
    
    
    
    var purpleButton = UIButton(frame: CGRect(x: 282, y: 497, width: 34, height: 34))
    
    
    
    //////////////////First Row/////////////////////////
    
    var a1Button = UIButton(frame: CGRect(x: 20, y: 428, width: 34, height: 34))
    
    
    
    var b1Button = UIButton(frame: CGRect(x: 71, y: 428, width: 34, height: 34))
    
    
    
    var c1Button = UIButton(frame: CGRect(x: 120, y: 428, width: 34, height: 34))
    
    
    
    var d1Button = UIButton(frame: CGRect(x: 171, y: 428, width: 34, height: 34))
    
    
    
    var ok1Button = UIButton(frame: CGRect(x: 225, y: 428, width: 34, height: 34))
    
    
    
    //////////////////Second Row/////////////////////////
    
    var a2Button = UIButton(frame: CGRect(x: 20, y: 373, width: 34, height: 34))
    
    
    
    var b2Button = UIButton(frame: CGRect(x: 71, y: 373, width: 34, height: 34))
    
    
    
    var c2Button = UIButton(frame: CGRect(x: 120, y: 373, width: 34, height: 34))
    
    
    
    var d2Button = UIButton(frame: CGRect(x: 171, y: 373, width: 34, height: 34))
    
    
    
    var ok2Button = UIButton(frame: CGRect(x: 225, y: 373, width: 34, height: 34))
    
    
    
    //////////////////Third Row/////////////////////////
    
    var a3Button = UIButton(frame: CGRect(x: 20, y: 318, width: 34, height: 34))
    
    
    
    var b3Button = UIButton(frame: CGRect(x: 71, y: 318, width: 34, height: 34))
    
    
    
    var c3Button = UIButton(frame: CGRect(x: 120, y: 318, width: 34, height: 34))
    
    
    
    var d3Button = UIButton(frame: CGRect(x: 171, y: 318, width: 34, height: 34))
    
    
    
    var ok3Button = UIButton(frame: CGRect(x: 225, y: 318, width: 34, height: 34))
    
    
    
    //////////////////Fourth Row/////////////////////////
    
    var a4Button = UIButton(frame: CGRect(x: 20, y: 263, width: 34, height: 34))
    
    
    
    var b4Button = UIButton(frame: CGRect(x: 71, y: 263, width: 34, height: 34))
    
    
    
    
    var c4Button = UIButton(frame: CGRect(x: 120, y: 263, width: 34, height: 34))
    
    
    
    var d4Button = UIButton(frame: CGRect(x: 171, y: 263, width: 34, height: 34))
    
    
    
    var ok4Button = UIButton(frame: CGRect(x: 225, y: 263, width: 34, height: 34))
    
    
    
    //////////////////Fifth Row/////////////////////////
    
    var a5Button = UIButton(frame: CGRect(x: 20, y: 208, width: 34, height: 34))
    
    
    
    var b5Button = UIButton(frame: CGRect(x: 71, y: 208, width: 34, height: 34))
    
    
    
    var c5Button = UIButton(frame: CGRect(x: 120, y: 208, width: 34, height: 34))
    
    
    
    var d5Button = UIButton(frame: CGRect(x: 171, y: 208, width: 34, height: 34))
    
    
    
    var ok5Button = UIButton(frame: CGRect(x: 225, y: 208, width: 34, height: 34))
    
    
    
    //////////////////Sixth Row/////////////////////////
    
    var a6Button = UIButton(frame: CGRect(x: 20, y: 153, width: 34, height: 34))
    
    
    
    var b6Button = UIButton(frame: CGRect(x: 71, y: 153, width: 34, height: 34))
    
    
    
    var c6Button = UIButton(frame: CGRect(x: 120, y: 153, width: 34, height: 34))
    
    
    
    var d6Button = UIButton(frame: CGRect(x: 171, y: 153, width: 34, height: 34))
    
    
    
    var ok6Button = UIButton(frame: CGRect(x: 225, y: 153, width: 34, height: 34))
    
    
    
    //////////////////Seventh Row/////////////////////////
    
    var a7Button = UIButton(frame: CGRect(x: 20, y: 98, width: 34, height: 34))
    
    
    
    var b7Button = UIButton(frame: CGRect(x: 71, y: 98, width: 34, height: 34))
    
    
    
    var c7Button = UIButton(frame: CGRect(x: 120, y: 98, width: 34, height: 34))
    
    
    
    var d7Button = UIButton(frame: CGRect(x: 171, y: 98, width: 34, height: 34))
    
    
    
    var ok7Button = UIButton(frame: CGRect(x: 225, y: 98, width: 34, height: 34))
    
    
    
    //////////////////Eighth Row/////////////////////////
    
    var a8Button = UIButton(frame: CGRect(x: 20, y: 49, width: 34, height: 34))
    
    
    
    var b8Button = UIButton(frame: CGRect(x: 71, y: 49, width: 34, height: 34))
    
    
    
    var c8Button = UIButton(frame: CGRect(x: 120, y: 49, width: 34, height: 34))
    
    
    
    var d8Button = UIButton(frame: CGRect(x: 171, y: 49, width: 34, height: 34))
    
    
    
    var ok8Button = UIButton(frame: CGRect(x: 225, y: 49, width: 34, height: 34))
    
    
    
    
    
    
    
    ///////////////Dot Rows///////////////////////
    
    
    
    //////////////////First Row/////////////////////////
    
    var a1Dot = UIButton(frame: CGRect(x: 289, y: 448, width: 13, height: 14))
    
    
    
    var b1Dot = UIButton(frame: CGRect(x: 289, y: 428, width: 13, height: 14))
    
    
    
    var c1Dot = UIButton(frame: CGRect(x: 272, y: 428, width: 13, height: 14))
    
    
    
    var d1Dot = UIButton(frame: CGRect(x: 272, y: 448, width: 13, height: 14))
    
    
    
    //////////////////Second Row/////////////////////////
    
    var a2Dot = UIButton(frame: CGRect(x: 289, y: 393, width: 13, height: 14))
    
    
    
    var b2Dot = UIButton(frame: CGRect(x: 289, y: 373, width: 13, height: 14))
    
    
    
    var c2Dot = UIButton(frame: CGRect(x: 272, y: 373, width: 13, height: 14))
    
    
    
    var d2Dot = UIButton(frame: CGRect(x: 272, y: 393, width: 13, height: 14))
    
    
    
    //////////////////Third Row/////////////////////////
    
    var a3Dot = UIButton(frame: CGRect(x: 289, y: 338, width: 13, height: 14))
    
    
    
    var b3Dot = UIButton(frame: CGRect(x: 289, y: 318, width: 13, height: 14))
    
    
    
    var c3Dot = UIButton(frame: CGRect(x: 272, y: 318, width: 13, height: 14))
    
    
    
    var d3Dot = UIButton(frame: CGRect(x: 272, y: 338, width: 13, height: 14))
    
    
    //////////////////Fourth Row/////////////////////////
    
    var a4Dot = UIButton(frame: CGRect(x: 289, y: 283, width: 13, height: 14))
    
    
    
    var b4Dot = UIButton(frame: CGRect(x: 289, y: 263, width: 13, height: 14))
    
    
    
    var c4Dot = UIButton(frame: CGRect(x: 272, y: 263, width: 13, height: 14))
    
    
    
    var d4Dot = UIButton(frame: CGRect(x: 272, y: 283, width: 13, height: 14))
    
    
    
    //////////////////Fifth Row/////////////////////////
    
    var a5Dot = UIButton(frame: CGRect(x: 289, y: 228, width: 13, height: 14))
    
    
    
    var b5Dot = UIButton(frame: CGRect(x: 289, y: 208, width: 13, height: 14))
    
    
    
    var c5Dot = UIButton(frame: CGRect(x: 272, y: 208, width: 13, height: 14))
    
    
    
    var d5Dot = UIButton(frame: CGRect(x: 272, y: 228, width: 13, height: 14))
    
    
    
    //////////////////Sixth Row/////////////////////////
    
    var a6Dot = UIButton(frame: CGRect(x: 289, y: 173, width: 13, height: 14))
    
    
    
    var b6Dot = UIButton(frame: CGRect(x: 289, y: 153, width: 13, height: 14))
    
    
    
    var c6Dot = UIButton(frame: CGRect(x: 272, y: 153, width: 13, height: 14))
    
    
    
    var d6Dot = UIButton(frame: CGRect(x: 272, y: 173, width: 13, height: 14))
    
    
    
    //////////////////Seventh Row/////////////////////////
    
    var a7Dot = UIButton(frame: CGRect(x: 289, y: 118, width: 13, height: 14))
    
    
    
    var b7Dot = UIButton(frame: CGRect(x: 289, y: 98, width: 13, height: 14))
    
    
    
    var c7Dot = UIButton(frame: CGRect(x: 272, y: 98, width: 13, height: 14))
    
    
    
    var d7Dot = UIButton(frame: CGRect(x: 272, y: 118, width: 13, height: 14))
    
    
    
    //////////////////Eighth Row/////////////////////////
    
    var a8Dot = UIButton(frame: CGRect(x: 289, y: 69, width: 13, height: 14))
    
    
    
    var b8Dot = UIButton(frame: CGRect(x: 289, y: 49, width: 13, height: 14))
    
    
    
    var c8Dot = UIButton(frame: CGRect(x: 272, y: 49, width: 13, height: 14))
    
    
    
    var d8Dot = UIButton(frame: CGRect(x: 272, y: 69, width: 13, height: 14))
    
    
    override func draw(_ rect: CGRect) {
        Mastermind2StyleKit.drawMastermind()
        
        //////////////////Info Button/////////////////////////
        self.addSubview(infoButton)
        
        
        
        //////////////////Menu Button/////////////////////////
        self.addSubview(menuButton)
        
        
        
        //////////////////Color Row/////////////////////////
        
        self.addSubview(redButton)
        
        
        
        self.addSubview(orangeButton)
        
        
        
        self.addSubview(yellowButton)
        
        
        
        self.addSubview(brownButton)
        
        
        
        self.addSubview(blueButton)
        
        
        
        self.addSubview(greenButton)
        
        
        
        self.addSubview(cyanButton)
        
        
        
        self.addSubview(purpleButton)
        
        
        //////////////////First Row/////////////////////////
        
        
        
        self.addSubview(a1Button)
        
        
        
        self.addSubview(b1Button)
        
        
        
        self.addSubview(c1Button)
        
        
        
        self.addSubview(d1Button)
        
        
        
        self.addSubview(ok1Button)
        
        //////////////////Second Row/////////////////////////
        
        
        
        self.addSubview(a2Button)
        
        
        
        self.addSubview(b2Button)
        
        
        
        self.addSubview(c2Button)
        
        
        
        self.addSubview(d2Button)
        
        
        
        self.addSubview(ok2Button)
        
        //////////////////Third Row/////////////////////////
        
        
        
        self.addSubview(a3Button)
        
        
        
        self.addSubview(b3Button)
        
        
        
        self.addSubview(c3Button)
        
        
        
        self.addSubview(d3Button)
        
        
        
        self.addSubview(ok3Button)
        
        //////////////////Fourth Row/////////////////////////
        
        
        
        self.addSubview(a4Button)
        
        
        
        self.addSubview(b4Button)
        
        
        
        self.addSubview(c4Button)
        
        
        
        self.addSubview(d4Button)
        
        
        
        self.addSubview(ok4Button)
        
        //////////////////Fifth Row/////////////////////////
        
        
        
        self.addSubview(a5Button)
        
        
        
        self.addSubview(b5Button)
        
        
        
        self.addSubview(c5Button)
        
        
        
        self.addSubview(d5Button)
        
        
        
        self.addSubview(ok5Button)
        
        //////////////////Sixth Row/////////////////////////
        
        
        
        self.addSubview(a6Button)
        
        
        
        self.addSubview(b6Button)
        
        
        
        self.addSubview(c6Button)
        
        
        
        self.addSubview(d6Button)
        
        
        
        self.addSubview(ok6Button)
        
        //////////////////Seventh Row/////////////////////////
        
        
        
        self.addSubview(a7Button)
        
        
        
        self.addSubview(b7Button)
        
        
        
        self.addSubview(c7Button)
        
        
        
        self.addSubview(d7Button)
        
        
        
        self.addSubview(ok7Button)
        
        //////////////////Eighth Row/////////////////////////
        
        
        self.addSubview(a8Button)
        
        
        
        self.addSubview(b8Button)
        
        
        
        self.addSubview(c8Button)
        
        
        
        self.addSubview(d8Button)
        
        
        self.addSubview(ok8Button)
        
        
        
        ///////////////////DOTS/////////////////////////////
        //////////////////First Row/////////////////////////
        
        
        
        self.addSubview(a1Dot)
        
        
        
        self.addSubview(b1Dot)
        
        
        
        self.addSubview(c1Dot)
        
        
        
        self.addSubview(d1Dot)
        
        
        
        //////////////////Second Row/////////////////////////
        
        
        
        self.addSubview(a2Dot)
        
        
        
        self.addSubview(b2Dot)
        
        
        
        self.addSubview(c2Dot)
        
        
        
        self.addSubview(d2Dot)
        
        
        
        //////////////////Third Row/////////////////////////
        
        
        
        self.addSubview(a3Dot)
        
        
        
        self.addSubview(b3Dot)
        
        
        
        self.addSubview(c3Dot)
        
        
        
        self.addSubview(d3Dot)
        
        
        
        //////////////////Fourth Row/////////////////////////
        
        
        
        self.addSubview(a4Dot)
        
        
        
        self.addSubview(b4Dot)
        
        
        
        self.addSubview(c4Dot)
        
        
        
        self.addSubview(d4Dot)
        
        
        
        //////////////////Fifth Row/////////////////////////
        
        
        
        self.addSubview(a5Dot)
        
        
        
        self.addSubview(b5Dot)
        
        
        
        self.addSubview(c5Dot)
        
        
        
        self.addSubview(d5Dot)
        
        
        
        //////////////////Sixth Row/////////////////////////
        
        
        
        self.addSubview(a6Dot)
        
        
        
        self.addSubview(b6Dot)
        
        
        
        self.addSubview(c6Dot)
        
        
        
        self.addSubview(d6Dot)
        
        
        
        //////////////////Seventh Row/////////////////////////
        
        
        
        self.addSubview(a7Dot)
        
        
        
        self.addSubview(b7Dot)
        
        
        
        self.addSubview(c7Dot)
        
        
        
        self.addSubview(d7Dot)
        
        
        //////////////////Eighth Row/////////////////////////
        
        
        self.addSubview(a8Dot)
        
        
        
        self.addSubview(b8Dot)
        
        
        
        self.addSubview(c8Dot)
        
        
        
        self.addSubview(d8Dot)
        
        
    }
    
    
}
