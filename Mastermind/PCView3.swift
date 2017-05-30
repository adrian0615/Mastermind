//
//  PCView3.swift
//  Mastermind
//
//  Created by Adrian McDaniel on 5/27/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import UIKit

class PCView3: UIView {

    var myStyleKit3 = Mastermind3StyleKit()
    
    
    
    /////////////////////Info Button//////////////////////////
    
    var infoButton = UIButton(frame: CGRect(x: 303, y: 27, width: 50, height: 50))
    
    /////////////////////Menu Button///////////////////////////
    
    var menuButton = UIButton(frame: CGRect(x: 18, y: 27, width: 50, height: 50))
    
    
    //////////////////Button Color Row/////////////////////////
    
    var redButton = UIButton(frame: CGRect(x: 10, y: 603, width: 40, height: 40))
    
    
    var orangeButton = UIButton(frame: CGRect(x: 55, y: 603, width: 40, height: 40))
    
    
    
    var yellowButton = UIButton(frame: CGRect(x: 100, y: 603, width: 40, height: 40))
    
    
    
    var brownButton = UIButton(frame: CGRect(x: 190, y: 603, width: 40, height: 40))
    
    
    
    var blueButton = UIButton(frame: CGRect(x: 235, y: 603, width: 40, height: 40))
    
    
    
    var greenButton = UIButton(frame: CGRect(x: 145, y: 603, width: 40, height: 40))
    
    
    
    var cyanButton = UIButton(frame: CGRect(x: 280, y: 603, width: 40, height: 40))
    
    
    
    var purpleButton = UIButton(frame: CGRect(x: 325, y: 603, width: 40, height: 40))
    
    
    
    //////////////////First Row/////////////////////////
    
    var a1Button = UIButton(frame: CGRect(x: 21, y: 537, width: 42, height: 42))
    
    
    
    var b1Button = UIButton(frame: CGRect(x: 83, y: 537, width: 42, height: 42))
    
    
    
    var c1Button = UIButton(frame: CGRect(x: 144, y: 537, width: 42, height: 42))
    
    
    
    var d1Button = UIButton(frame: CGRect(x: 203, y: 537, width: 42, height: 42))
    
    
    
    var ok1Button = UIButton(frame: CGRect(x: 266, y: 537, width: 42, height: 42))
    
    
    
    //////////////////Second Row/////////////////////////
    
    var a2Button = UIButton(frame: CGRect(x: 21, y: 475, width: 42, height: 42))
    
    
    
    var b2Button = UIButton(frame: CGRect(x: 83, y: 475, width: 42, height: 42))
    
    
    
    var c2Button = UIButton(frame: CGRect(x: 144, y: 475, width: 42, height: 42))
    
    
    
    var d2Button = UIButton(frame: CGRect(x: 203, y: 475, width: 42, height: 42))
    
    
    
    var ok2Button = UIButton(frame: CGRect(x: 266, y: 475, width: 42, height: 42))
    
    
    
    //////////////////Third Row/////////////////////////
    
    var a3Button = UIButton(frame: CGRect(x: 21, y: 412, width: 42, height: 42))
    
    
    
    var b3Button = UIButton(frame: CGRect(x: 83, y: 412, width: 42, height: 42))
    
    
    
    var c3Button = UIButton(frame: CGRect(x: 144, y: 412, width: 42, height: 42))
    
    
    
    var d3Button = UIButton(frame: CGRect(x: 203, y: 412, width: 42, height: 42))
    
    
    
    var ok3Button = UIButton(frame: CGRect(x: 266, y: 412, width: 42, height: 42))
    
    
    
    //////////////////Fourth Row/////////////////////////
    
    var a4Button = UIButton(frame: CGRect(x: 21, y: 350, width: 42, height: 42))
    
    
    
    var b4Button = UIButton(frame: CGRect(x: 83, y: 350, width: 42, height: 42))
    
    
    
    
    var c4Button = UIButton(frame: CGRect(x: 144, y: 350, width: 42, height: 42))
    
    
    
    var d4Button = UIButton(frame: CGRect(x: 203, y: 350, width: 42, height: 42))
    
    
    
    var ok4Button = UIButton(frame: CGRect(x: 266, y: 350, width: 42, height: 42))
    
    
    
    //////////////////Fifth Row/////////////////////////
    
    var a5Button = UIButton(frame: CGRect(x: 21, y: 289, width: 42, height: 42))
    
    
    
    var b5Button = UIButton(frame: CGRect(x: 83, y: 289, width: 42, height: 42))
    
    
    
    var c5Button = UIButton(frame: CGRect(x: 144, y: 289, width: 42, height: 42))
    
    
    
    var d5Button = UIButton(frame: CGRect(x: 203, y: 289, width: 42, height: 42))
    
    
    
    var ok5Button = UIButton(frame: CGRect(x: 266, y: 289, width: 42, height: 42))
    
    
    
    //////////////////Sixth Row/////////////////////////
    
    var a6Button = UIButton(frame: CGRect(x: 21, y: 227, width: 42, height: 42))
    
    
    
    var b6Button = UIButton(frame: CGRect(x: 83, y: 227, width: 42, height: 42))
    
    
    
    var c6Button = UIButton(frame: CGRect(x: 144, y: 227, width: 42, height: 42))
    
    
    
    var d6Button = UIButton(frame: CGRect(x: 203, y: 227, width: 42, height: 42))
    
    
    
    var ok6Button = UIButton(frame: CGRect(x: 266, y: 227, width: 42, height: 42))
    
    
    
    //////////////////Seventh Row/////////////////////////
    
    var a7Button = UIButton(frame: CGRect(x: 21, y: 164, width: 42, height: 42))
    
    
    
    var b7Button = UIButton(frame: CGRect(x: 83, y: 164, width: 42, height: 42))
    
    
    
    var c7Button = UIButton(frame: CGRect(x: 144, y: 164, width: 42, height: 42))
    
    
    
    var d7Button = UIButton(frame: CGRect(x: 203, y: 164, width: 42, height: 42))
    
    
    
    var ok7Button = UIButton(frame: CGRect(x: 266, y: 164, width: 42, height: 42))
    
    
    
    //////////////////Eighth Row/////////////////////////
    
    var a8Button = UIButton(frame: CGRect(x: 21, y: 102, width: 42, height: 42))
    
    
    
    var b8Button = UIButton(frame: CGRect(x: 83, y: 102, width: 42, height: 42))
    
    
    
    var c8Button = UIButton(frame: CGRect(x: 144, y: 102, width: 42, height: 42))
    
    
    
    var d8Button = UIButton(frame: CGRect(x: 203, y: 102, width: 42, height: 42))
    
    
    
    var ok8Button = UIButton(frame: CGRect(x: 266, y: 102, width: 42, height: 42))
    
    
    
    
    
    
    
    ///////////////Dot Rows///////////////////////
    
    
    
    //////////////////First Row/////////////////////////
    
    var a1Dot = UIButton(frame: CGRect(x: 341, y: 561, width: 17, height: 18))
    
    
    
    var b1Dot = UIButton(frame: CGRect(x: 341, y: 537, width: 17, height: 18))
    
    
    
    var c1Dot = UIButton(frame: CGRect(x: 319, y: 537, width: 17, height: 18))
    
    
    
    var d1Dot = UIButton(frame: CGRect(x: 319, y: 561, width: 17, height: 18))
    
    
    
    //////////////////Second Row/////////////////////////
    
    var a2Dot = UIButton(frame: CGRect(x: 341, y: 499, width: 17, height: 18))
    
    
    
    var b2Dot = UIButton(frame: CGRect(x: 341, y: 475, width: 17, height: 18))
    
    
    
    var c2Dot = UIButton(frame: CGRect(x: 319, y: 475, width: 17, height: 18))
    
    
    
    var d2Dot = UIButton(frame: CGRect(x: 319, y: 499, width: 17, height: 18))
    
    
    
    //////////////////Third Row/////////////////////////
    
    var a3Dot = UIButton(frame: CGRect(x: 341, y: 436, width: 17, height: 18))
    
    
    
    var b3Dot = UIButton(frame: CGRect(x: 341, y: 412, width: 17, height: 18))
    
    
    
    var c3Dot = UIButton(frame: CGRect(x: 319, y: 412, width: 17, height: 18))
    
    
    
    var d3Dot = UIButton(frame: CGRect(x: 319, y: 436, width: 17, height: 18))
    
    
    //////////////////Fourth Row/////////////////////////
    
    var a4Dot = UIButton(frame: CGRect(x: 341, y: 374, width: 17, height: 18))
    
    
    
    var b4Dot = UIButton(frame: CGRect(x: 341, y: 350, width: 17, height: 18))
    
    
    
    var c4Dot = UIButton(frame: CGRect(x: 319, y: 350, width: 17, height: 18))
    
    
    
    var d4Dot = UIButton(frame: CGRect(x: 319, y: 374, width: 17, height: 18))
    
    
    
    //////////////////Fifth Row/////////////////////////
    
    var a5Dot = UIButton(frame: CGRect(x: 341, y: 313, width: 17, height: 18))
    
    
    
    var b5Dot = UIButton(frame: CGRect(x: 341, y: 289, width: 17, height: 18))
    
    
    
    var c5Dot = UIButton(frame: CGRect(x: 319, y: 289, width: 17, height: 18))
    
    
    
    var d5Dot = UIButton(frame: CGRect(x: 319, y: 313, width: 17, height: 18))
    
    
    
    //////////////////Sixth Row/////////////////////////
    
    var a6Dot = UIButton(frame: CGRect(x: 341, y: 251, width: 17, height: 18))
    
    
    
    var b6Dot = UIButton(frame: CGRect(x: 341, y: 227, width: 17, height: 18))
    
    
    
    var c6Dot = UIButton(frame: CGRect(x: 319, y: 227, width: 17, height: 18))
    
    
    
    var d6Dot = UIButton(frame: CGRect(x: 319, y: 251, width: 17, height: 18))
    
    
    
    //////////////////Seventh Row/////////////////////////
    
    var a7Dot = UIButton(frame: CGRect(x: 341, y: 188, width: 17, height: 18))
    
    
    
    var b7Dot = UIButton(frame: CGRect(x: 341, y: 164, width: 17, height: 18))
    
    
    
    var c7Dot = UIButton(frame: CGRect(x: 319, y: 164, width: 17, height: 18))
    
    
    
    var d7Dot = UIButton(frame: CGRect(x: 319, y: 188, width: 17, height: 18))
    
    
    
    //////////////////Eighth Row/////////////////////////
    
    var a8Dot = UIButton(frame: CGRect(x: 341, y: 126, width: 17, height: 18))
    
    
    
    var b8Dot = UIButton(frame: CGRect(x: 341, y: 102, width: 17, height: 18))
    
    
    
    var c8Dot = UIButton(frame: CGRect(x: 319, y: 102, width: 17, height: 18))
    
    
    
    var d8Dot = UIButton(frame: CGRect(x: 319, y: 126, width: 17, height: 18))
    
    
    override func draw(_ rect: CGRect) {
        Mastermind3StyleKit.drawMastermind()
        
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
