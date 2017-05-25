//
//  PCView.swift
//  Mastermind
//
//  Created by Adrian McDaniel on 1/21/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import UIKit

class PCView: UIView {
    
    var myStyleKit = MastermindStyleKit()
    
    /////////////////////Info Button///////////////////////////
    
    let infoButton = UIButton(frame: CGRect(x: 270, y: 16, width: 33, height: 33))
    
    /////////////////////Menu Button///////////////////////////
    
    let menuButton = UIButton(frame: CGRect(x: 21, y: 16, width: 33, height: 33))

    
    //////////////////Button Color Row/////////////////////////
    
    let redButton = UIButton(frame: CGRect(x: 5, y: 426, width: 34, height: 34))
    
    
    let orangeButton = UIButton(frame: CGRect(x: 46, y: 426, width: 34, height: 34))
    
    
    
    let yellowButton = UIButton(frame: CGRect(x: 85, y: 426, width: 34, height: 34))
    
    
    
    let brownButton = UIButton(frame: CGRect(x: 164, y: 426, width: 34, height: 34))
    
    
    
    let blueButton = UIButton(frame: CGRect(x: 203, y: 426, width: 34, height: 34))
    
    
    
    let greenButton = UIButton(frame: CGRect(x: 124, y: 426, width: 34, height: 34))
    
    
    
    let cyanButton = UIButton(frame: CGRect(x: 243, y: 426, width: 34, height: 34))
    
    
    
    let purpleButton = UIButton(frame: CGRect(x: 282, y: 426, width: 34, height: 34))
    
    
    
    //////////////////First Row/////////////////////////
    
    let a1Button = UIButton(frame: CGRect(x: 18, y: 373, width: 34, height: 34))
    
    
    
    let b1Button = UIButton(frame: CGRect(x: 69, y: 373, width: 34, height: 34))
    
    
    
    let c1Button = UIButton(frame: CGRect(x: 118, y: 373, width: 34, height: 34))
    
    
    
    let d1Button = UIButton(frame: CGRect(x: 169, y: 373, width: 34, height: 34))
    
    
    
    let ok1Button = UIButton(frame: CGRect(x: 223, y: 373, width: 34, height: 34))
    
    
    
    //////////////////Second Row/////////////////////////
    
    let a2Button = UIButton(frame: CGRect(x: 18, y: 328, width: 34, height: 34))
    
    
    
    let b2Button = UIButton(frame: CGRect(x: 69, y: 328, width: 34, height: 34))
    
    
    
    let c2Button = UIButton(frame: CGRect(x: 118, y: 328, width: 34, height: 34))
    
    
    
    let d2Button = UIButton(frame: CGRect(x: 169, y: 328, width: 34, height: 34))
    
    
    
    let ok2Button = UIButton(frame: CGRect(x: 223, y: 328, width: 34, height: 34))
    
    
    
    //////////////////Third Row/////////////////////////
    
    let a3Button = UIButton(frame: CGRect(x: 18, y: 283, width: 34, height: 34))
    
    
    
    let b3Button = UIButton(frame: CGRect(x: 69, y: 283, width: 34, height: 34))
    
    
    
    let c3Button = UIButton(frame: CGRect(x: 118, y: 283, width: 34, height: 34))
    
    
    
    let d3Button = UIButton(frame: CGRect(x: 169, y: 283, width: 34, height: 34))
    
    
    
    let ok3Button = UIButton(frame: CGRect(x: 223, y: 283, width: 34, height: 34))
    
    
    
    //////////////////Fourth Row/////////////////////////
    
    let a4Button = UIButton(frame: CGRect(x: 18, y: 238, width: 34, height: 34))
    
    
    
    let b4Button = UIButton(frame: CGRect(x: 69, y: 238, width: 34, height: 34))

    
    
    
    let c4Button = UIButton(frame: CGRect(x: 118, y: 238, width: 34, height: 34))
    
    
    
    let d4Button = UIButton(frame: CGRect(x: 169, y: 238, width: 34, height: 34))
    
    
    
    let ok4Button = UIButton(frame: CGRect(x: 223, y: 239, width: 34, height: 34))
    
    
    
    //////////////////Fifth Row/////////////////////////
    
    let a5Button = UIButton(frame: CGRect(x: 18, y: 195, width: 34, height: 34))
    
    
    
    let b5Button = UIButton(frame: CGRect(x: 69, y: 195, width: 34, height: 34))
    
    
    
    let c5Button = UIButton(frame: CGRect(x: 118, y: 195, width: 34, height: 34))
    
    
    
    let d5Button = UIButton(frame: CGRect(x: 169, y: 195, width: 34, height: 34))
    
    
    
    let ok5Button = UIButton(frame: CGRect(x: 223, y: 195, width: 34, height: 34))
    
    
    
    //////////////////Sixth Row/////////////////////////
    
    let a6Button = UIButton(frame: CGRect(x: 18, y: 150, width: 34, height: 34))
    
    
    
    let b6Button = UIButton(frame: CGRect(x: 69, y: 150, width: 34, height: 34))
    
    
    
    let c6Button = UIButton(frame: CGRect(x: 118, y: 150, width: 34, height: 34))
    
    
    
    let d6Button = UIButton(frame: CGRect(x: 169, y: 150, width: 34, height: 34))
    
    
    
    let ok6Button = UIButton(frame: CGRect(x: 223, y: 150, width: 34, height: 34))
    
    
    
    //////////////////Seventh Row/////////////////////////
    
    let a7Button = UIButton(frame: CGRect(x: 18, y: 105, width: 34, height: 34))
    
    
    
    let b7Button = UIButton(frame: CGRect(x: 69, y: 105, width: 34, height: 34))
    
    
    
    let c7Button = UIButton(frame: CGRect(x: 118, y: 105, width: 34, height: 34))
    
    
    
    let d7Button = UIButton(frame: CGRect(x: 169, y: 105, width: 34, height: 34))
    
    
    
    let ok7Button = UIButton(frame: CGRect(x: 223, y: 105, width: 34, height: 34))
    
    
    
    //////////////////Eighth Row/////////////////////////
    
    let a8Button = UIButton(frame: CGRect(x: 18, y: 60, width: 34, height: 34))
    
    
    
    let b8Button = UIButton(frame: CGRect(x: 69, y: 60, width: 34, height: 34))
    
    
    
    let c8Button = UIButton(frame: CGRect(x: 118, y: 60, width: 34, height: 34))
    
    
    
    let d8Button = UIButton(frame: CGRect(x: 169, y: 60, width: 34, height: 34))
    
    
    
    let ok8Button = UIButton(frame: CGRect(x: 223, y: 61, width: 34, height: 34))
    
    
    
    
    
    
    
    ///////////////Dot Rows///////////////////////
    
    
    
    //////////////////First Row/////////////////////////
    
    let a1Dot = UIButton(frame: CGRect(x: 287, y: 393, width: 13, height: 14))
    
    
    
    let b1Dot = UIButton(frame: CGRect(x: 287, y: 373, width: 13, height: 14))
    
    
    
    let c1Dot = UIButton(frame: CGRect(x: 270, y: 373, width: 13, height: 14))
    
    
    
    let d1Dot = UIButton(frame: CGRect(x: 270, y: 393, width: 13, height: 14))
    
    
    
    //////////////////Second Row/////////////////////////
    
    let a2Dot = UIButton(frame: CGRect(x: 287, y: 348, width: 13, height: 14))
    
    
    
    let b2Dot = UIButton(frame: CGRect(x: 287, y: 328, width: 13, height: 14))
    
    
    
    let c2Dot = UIButton(frame: CGRect(x: 270, y: 328, width: 13, height: 14))
    
    
    
    let d2Dot = UIButton(frame: CGRect(x: 270, y: 348, width: 13, height: 14))
    
    
    
    //////////////////Third Row/////////////////////////
    
    let a3Dot = UIButton(frame: CGRect(x: 287, y: 303, width: 13, height: 14))
    
    
    
    let b3Dot = UIButton(frame: CGRect(x: 287, y: 283, width: 13, height: 14))
    
    
    
    let c3Dot = UIButton(frame: CGRect(x: 270, y: 283, width: 13, height: 14))
    
    
    
    let d3Dot = UIButton(frame: CGRect(x: 270, y: 303, width: 13, height: 14))
    
    
    //////////////////Fourth Row/////////////////////////
    
    let a4Dot = UIButton(frame: CGRect(x: 287, y: 259, width: 13, height: 14))
    
    
    
    let b4Dot = UIButton(frame: CGRect(x: 287, y: 239, width: 13, height: 14))
    
    
    
    let c4Dot = UIButton(frame: CGRect(x: 270, y: 239, width: 13, height: 14))
    
    
    
    let d4Dot = UIButton(frame: CGRect(x: 270, y: 259, width: 13, height: 14))
    
    
    
    //////////////////Fifth Row/////////////////////////
    
    let a5Dot = UIButton(frame: CGRect(x: 287, y: 215, width: 13, height: 14))
    
    
    
    let b5Dot = UIButton(frame: CGRect(x: 287, y: 195, width: 13, height: 14))
    
    
    
    let c5Dot = UIButton(frame: CGRect(x: 270, y: 195, width: 13, height: 14))
    
    
    
    let d5Dot = UIButton(frame: CGRect(x: 270, y: 215, width: 13, height: 14))
    
    
    
    //////////////////Sixth Row/////////////////////////
    
    let a6Dot = UIButton(frame: CGRect(x: 287, y: 170, width: 13, height: 14))
    
    
    
    let b6Dot = UIButton(frame: CGRect(x: 287, y: 150, width: 13, height: 14))
    
    
    
    let c6Dot = UIButton(frame: CGRect(x: 270, y: 150, width: 13, height: 14))
    
    
    
    let d6Dot = UIButton(frame: CGRect(x: 270, y: 170, width: 13, height: 14))
    
    
    
    //////////////////Seventh Row/////////////////////////
    
    let a7Dot = UIButton(frame: CGRect(x: 287, y: 125, width: 13, height: 14))
    
    
    
    let b7Dot = UIButton(frame: CGRect(x: 287, y: 105, width: 13, height: 14))
    
    
    
    let c7Dot = UIButton(frame: CGRect(x: 270, y: 105, width: 13, height: 14))
    
    
    
    let d7Dot = UIButton(frame: CGRect(x: 270, y: 125, width: 13, height: 14))
    
    
    
    //////////////////Eighth Row/////////////////////////
    
    let a8Dot = UIButton(frame: CGRect(x: 287, y: 81, width: 13, height: 14))
    
    
    
    let b8Dot = UIButton(frame: CGRect(x: 287, y: 61, width: 13, height: 14))
    
    
    
    let c8Dot = UIButton(frame: CGRect(x: 270, y: 61, width: 13, height: 14))
    
    
    
    let d8Dot = UIButton(frame: CGRect(x: 270, y: 81, width: 13, height: 14))
    

    override func draw(_ rect: CGRect) {
        MastermindStyleKit.drawMastermind()
        
        
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
