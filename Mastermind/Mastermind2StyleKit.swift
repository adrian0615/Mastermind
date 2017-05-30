//
//  Mastermind2StyleKit.swift
//  Mastermind
//
//  Created by Adrian McDaniel on 5/27/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import UIKit

public class Mastermind2StyleKit : NSObject {
    
    var button = UIButton()
    
    
    public dynamic class func drawMastermind(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 320, height: 568), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 320, height: 568), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 320, y: resizedFrame.height / 568)
        context.setFillColor(UIColor.lightGray.cgColor)
        context.fill(resizedFrame)
        
    
        
        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRect(x: 5, y: 497, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectanglePath.fill()
        
        
        //// Rectangle 2 Drawing
        let rectangle2Path = UIBezierPath(rect: CGRect(x: 46, y: 497, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle2Path.fill()
        
        
        //// Rectangle 3 Drawing
        let rectangle3Path = UIBezierPath(rect: CGRect(x: 85, y: 497, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle3Path.fill()
        
        
        //// Rectangle 4 Drawing
        let rectangle4Path = UIBezierPath(rect: CGRect(x: 164, y: 497, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle4Path.fill()
        
        
        //// Rectangle 5 Drawing
        let rectangle5Path = UIBezierPath(rect: CGRect(x: 203, y: 497, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle5Path.fill()
        
        
        //// Rectangle 6 Drawing
        let rectangle6Path = UIBezierPath(rect: CGRect(x: 124, y: 497, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle6Path.fill()
        
        
        //// Rectangle 7 Drawing
        let rectangle7Path = UIBezierPath(rect: CGRect(x: 243, y: 497, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle7Path.fill()
        
        
        //// Rectangle 8 Drawing
        let rectangle8Path = UIBezierPath(rect: CGRect(x: 282, y: 497, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle8Path.fill()
        
        
        //// Rectangle 9 Drawing
        let rectangle9Rect = CGRect(x: 225, y: 428, width: 34, height: 34)
        let rectangle9Path = UIBezierPath(rect: rectangle9Rect)
        UIColor.black.setFill()
        rectangle9Path.fill()
        let rectangle9TextContent = "OK"
        let rectangle9Style = NSMutableParagraphStyle()
        rectangle9Style.alignment = .center
        let rectangle9FontAttributes = [NSFontAttributeName: UIFont(name: "HelveticaNeue-Bold", size: 12)!, NSForegroundColorAttributeName: UIColor.white, NSParagraphStyleAttributeName: rectangle9Style]
        
        let rectangle9TextHeight: CGFloat = rectangle9TextContent.boundingRect(with: CGSize(width: rectangle9Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: rectangle9FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: rectangle9Rect)
        rectangle9TextContent.draw(in: CGRect(x: rectangle9Rect.minX, y: rectangle9Rect.minY + (rectangle9Rect.height - rectangle9TextHeight) / 2, width: rectangle9Rect.width, height: rectangle9TextHeight), withAttributes: rectangle9FontAttributes)
        context.restoreGState()
        
        
        //// Rectangle 17 Drawing
        let rectangle17Path = UIBezierPath(rect: CGRect(x: 20, y: 428, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle17Path.fill()
        
        
        //// Rectangle 18 Drawing
        let rectangle18Path = UIBezierPath(rect: CGRect(x: 71, y: 428, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle18Path.fill()
        
        
        //// Rectangle 19 Drawing
        let rectangle19Path = UIBezierPath(rect: CGRect(x: 120, y: 428, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle19Path.fill()
        
        
        //// Rectangle 20 Drawing
        let rectangle20Path = UIBezierPath(rect: CGRect(x: 171, y: 428, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle20Path.fill()
        
        
        //// Rectangle 77 Drawing
        let rectangle77Path = UIBezierPath(rect: CGRect(x: 272, y: 428, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle77Path.fill()
        
        
        //// Rectangle 78 Drawing
        let rectangle78Path = UIBezierPath(rect: CGRect(x: 289, y: 428, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle78Path.fill()
        
        
        //// Rectangle 79 Drawing
        let rectangle79Path = UIBezierPath(rect: CGRect(x: 272, y: 448, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle79Path.fill()
        
        
        //// Rectangle 80 Drawing
        let rectangle80Path = UIBezierPath(rect: CGRect(x: 289, y: 448, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle80Path.fill()
        
        
        //// Rectangle 10 Drawing
        let rectangle10Rect = CGRect(x: 225, y: 373, width: 34, height: 34)
        let rectangle10Path = UIBezierPath(rect: rectangle10Rect)
        UIColor.black.setFill()
        rectangle10Path.fill()
        let rectangle10TextContent = "OK"
        let rectangle10Style = NSMutableParagraphStyle()
        rectangle10Style.alignment = .center
        let rectangle10FontAttributes = [NSFontAttributeName: UIFont(name: "HelveticaNeue-Bold", size: 12)!, NSForegroundColorAttributeName: UIColor.white, NSParagraphStyleAttributeName: rectangle10Style]
        
        let rectangle10TextHeight: CGFloat = rectangle10TextContent.boundingRect(with: CGSize(width: rectangle10Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: rectangle10FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: rectangle10Rect)
        rectangle10TextContent.draw(in: CGRect(x: rectangle10Rect.minX, y: rectangle10Rect.minY + (rectangle10Rect.height - rectangle10TextHeight) / 2, width: rectangle10Rect.width, height: rectangle10TextHeight), withAttributes: rectangle10FontAttributes)
        context.restoreGState()
        
        
        //// Rectangle 11 Drawing
        let rectangle11Path = UIBezierPath(rect: CGRect(x: 20, y: 373, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle11Path.fill()
        
        
        //// Rectangle 12 Drawing
        let rectangle12Path = UIBezierPath(rect: CGRect(x: 71, y: 373, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle12Path.fill()
        
        
        //// Rectangle 13 Drawing
        let rectangle13Path = UIBezierPath(rect: CGRect(x: 120, y: 373, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle13Path.fill()
        
        
        //// Rectangle 14 Drawing
        let rectangle14Path = UIBezierPath(rect: CGRect(x: 171, y: 373, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle14Path.fill()
        
        
        //// Rectangle 15 Drawing
        let rectangle15Path = UIBezierPath(rect: CGRect(x: 272, y: 373, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle15Path.fill()
        
        
        //// Rectangle 16 Drawing
        let rectangle16Path = UIBezierPath(rect: CGRect(x: 289, y: 373, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle16Path.fill()
        
        
        //// Rectangle 21 Drawing
        let rectangle21Path = UIBezierPath(rect: CGRect(x: 272, y: 393, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle21Path.fill()
        
        
        //// Rectangle 22 Drawing
        let rectangle22Path = UIBezierPath(rect: CGRect(x: 289, y: 393, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle22Path.fill()
        
        
        //// Rectangle 23 Drawing
        let rectangle23Rect = CGRect(x: 225, y: 318, width: 34, height: 34)
        let rectangle23Path = UIBezierPath(rect: rectangle23Rect)
        UIColor.black.setFill()
        rectangle23Path.fill()
        let rectangle23TextContent = "OK"
        let rectangle23Style = NSMutableParagraphStyle()
        rectangle23Style.alignment = .center
        let rectangle23FontAttributes = [NSFontAttributeName: UIFont(name: "HelveticaNeue-Bold", size: 12)!, NSForegroundColorAttributeName: UIColor.white, NSParagraphStyleAttributeName: rectangle23Style]
        
        let rectangle23TextHeight: CGFloat = rectangle23TextContent.boundingRect(with: CGSize(width: rectangle23Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: rectangle23FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: rectangle23Rect)
        rectangle23TextContent.draw(in: CGRect(x: rectangle23Rect.minX, y: rectangle23Rect.minY + (rectangle23Rect.height - rectangle23TextHeight) / 2, width: rectangle23Rect.width, height: rectangle23TextHeight), withAttributes: rectangle23FontAttributes)
        context.restoreGState()
        
        
        //// Rectangle 24 Drawing
        let rectangle24Path = UIBezierPath(rect: CGRect(x: 20, y: 318, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle24Path.fill()
        
        
        //// Rectangle 25 Drawing
        let rectangle25Path = UIBezierPath(rect: CGRect(x: 71, y: 318, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle25Path.fill()
        
        
        //// Rectangle 26 Drawing
        let rectangle26Path = UIBezierPath(rect: CGRect(x: 120, y: 318, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle26Path.fill()
        
        
        //// Rectangle 27 Drawing
        let rectangle27Path = UIBezierPath(rect: CGRect(x: 171, y: 318, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle27Path.fill()
        
        
        //// Rectangle 28 Drawing
        let rectangle28Path = UIBezierPath(rect: CGRect(x: 272, y: 318, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle28Path.fill()
        
        
        //// Rectangle 29 Drawing
        let rectangle29Path = UIBezierPath(rect: CGRect(x: 289, y: 318, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle29Path.fill()
        
        
        //// Rectangle 30 Drawing
        let rectangle30Path = UIBezierPath(rect: CGRect(x: 272, y: 338, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle30Path.fill()
        
        
        //// Rectangle 31 Drawing
        let rectangle31Path = UIBezierPath(rect: CGRect(x: 289, y: 338, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle31Path.fill()
        
        
        //// Rectangle 32 Drawing
        let rectangle32Rect = CGRect(x: 225, y: 263, width: 34, height: 34)
        let rectangle32Path = UIBezierPath(rect: rectangle32Rect)
        UIColor.black.setFill()
        rectangle32Path.fill()
        let rectangle32TextContent = "OK"
        let rectangle32Style = NSMutableParagraphStyle()
        rectangle32Style.alignment = .center
        let rectangle32FontAttributes = [NSFontAttributeName: UIFont(name: "HelveticaNeue-Bold", size: 12)!, NSForegroundColorAttributeName: UIColor.white, NSParagraphStyleAttributeName: rectangle32Style]
        
        let rectangle32TextHeight: CGFloat = rectangle32TextContent.boundingRect(with: CGSize(width: rectangle32Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: rectangle32FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: rectangle32Rect)
        rectangle32TextContent.draw(in: CGRect(x: rectangle32Rect.minX, y: rectangle32Rect.minY + (rectangle32Rect.height - rectangle32TextHeight) / 2, width: rectangle32Rect.width, height: rectangle32TextHeight), withAttributes: rectangle32FontAttributes)
        context.restoreGState()
        
        
        //// Rectangle 33 Drawing
        let rectangle33Path = UIBezierPath(rect: CGRect(x: 20, y: 263, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle33Path.fill()
        
        
        //// Rectangle 34 Drawing
        let rectangle34Path = UIBezierPath(rect: CGRect(x: 71, y: 263, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle34Path.fill()
        
        
        //// Rectangle 35 Drawing
        let rectangle35Path = UIBezierPath(rect: CGRect(x: 120, y: 263, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle35Path.fill()
        
        
        //// Rectangle 36 Drawing
        let rectangle36Path = UIBezierPath(rect: CGRect(x: 171, y: 263, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle36Path.fill()
        
        
        //// Rectangle 37 Drawing
        let rectangle37Path = UIBezierPath(rect: CGRect(x: 272, y: 263, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle37Path.fill()
        
        
        //// Rectangle 38 Drawing
        let rectangle38Path = UIBezierPath(rect: CGRect(x: 289, y: 263, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle38Path.fill()
        
        
        //// Rectangle 39 Drawing
        let rectangle39Path = UIBezierPath(rect: CGRect(x: 272, y: 283, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle39Path.fill()
        
        
        //// Rectangle 40 Drawing
        let rectangle40Path = UIBezierPath(rect: CGRect(x: 289, y: 283, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle40Path.fill()
        
        
        
        //// Rectangle 50 Drawing
        let rectangle50Rect = CGRect(x: 225, y: 208, width: 34, height: 34)
        let rectangle50Path = UIBezierPath(rect: rectangle50Rect)
        UIColor.black.setFill()
        rectangle50Path.fill()
        let rectangle50TextContent = "OK"
        let rectangle50Style = NSMutableParagraphStyle()
        rectangle50Style.alignment = .center
        let rectangle50FontAttributes = [NSFontAttributeName: UIFont(name: "HelveticaNeue-Bold", size: 12)!, NSForegroundColorAttributeName: UIColor.white, NSParagraphStyleAttributeName: rectangle50Style]
        
        let rectangle50TextHeight: CGFloat = rectangle50TextContent.boundingRect(with: CGSize(width: rectangle50Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: rectangle50FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: rectangle50Rect)
        rectangle50TextContent.draw(in: CGRect(x: rectangle50Rect.minX, y: rectangle50Rect.minY + (rectangle50Rect.height - rectangle50TextHeight) / 2, width: rectangle50Rect.width, height: rectangle50TextHeight), withAttributes: rectangle50FontAttributes)
        context.restoreGState()
        
        
        //// Rectangle 51 Drawing
        let rectangle51Path = UIBezierPath(rect: CGRect(x: 20, y: 208, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle51Path.fill()
        
        
        //// Rectangle 52 Drawing
        let rectangle52Path = UIBezierPath(rect: CGRect(x: 71, y: 208, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle52Path.fill()
        
        
        //// Rectangle 53 Drawing
        let rectangle53Path = UIBezierPath(rect: CGRect(x: 120, y: 208, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle53Path.fill()
        
        
        //// Rectangle 54 Drawing
        let rectangle54Path = UIBezierPath(rect: CGRect(x: 171, y: 208, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle54Path.fill()
        
        
        //// Rectangle 55 Drawing
        let rectangle55Path = UIBezierPath(rect: CGRect(x: 272, y: 208, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle55Path.fill()
        
        
        //// Rectangle 56 Drawing
        let rectangle56Path = UIBezierPath(rect: CGRect(x: 289, y: 208, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle56Path.fill()
        
        
        //// Rectangle 57 Drawing
        let rectangle57Path = UIBezierPath(rect: CGRect(x: 272, y: 228, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle57Path.fill()
        
        
        //// Rectangle 58 Drawing
        let rectangle58Path = UIBezierPath(rect: CGRect(x: 289, y: 228, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle58Path.fill()
        
        
        //// Rectangle 59 Drawing
        let rectangle59Rect = CGRect(x: 225, y: 153, width: 34, height: 34)
        let rectangle59Path = UIBezierPath(rect: rectangle59Rect)
        UIColor.black.setFill()
        rectangle59Path.fill()
        let rectangle59TextContent = "OK"
        let rectangle59Style = NSMutableParagraphStyle()
        rectangle59Style.alignment = .center
        let rectangle59FontAttributes = [NSFontAttributeName: UIFont(name: "HelveticaNeue-Bold", size: 12)!, NSForegroundColorAttributeName: UIColor.white, NSParagraphStyleAttributeName: rectangle59Style]
        
        let rectangle59TextHeight: CGFloat = rectangle59TextContent.boundingRect(with: CGSize(width: rectangle59Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: rectangle59FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: rectangle59Rect)
        rectangle59TextContent.draw(in: CGRect(x: rectangle59Rect.minX, y: rectangle59Rect.minY + (rectangle59Rect.height - rectangle59TextHeight) / 2, width: rectangle59Rect.width, height: rectangle59TextHeight), withAttributes: rectangle59FontAttributes)
        context.restoreGState()
        
        
        //// Rectangle 60 Drawing
        let rectangle60Path = UIBezierPath(rect: CGRect(x: 20, y: 153, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle60Path.fill()
        
        
        //// Rectangle 61 Drawing
        let rectangle61Path = UIBezierPath(rect: CGRect(x: 71, y: 153, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle61Path.fill()
        
        
        //// Rectangle 62 Drawing
        let rectangle62Path = UIBezierPath(rect: CGRect(x: 120, y: 153, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle62Path.fill()
        
        
        //// Rectangle 63 Drawing
        let rectangle63Path = UIBezierPath(rect: CGRect(x: 171, y: 153, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle63Path.fill()
        
        
        //// Rectangle 64 Drawing
        let rectangle64Path = UIBezierPath(rect: CGRect(x: 272, y: 153, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle64Path.fill()
        
        
        //// Rectangle 65 Drawing
        let rectangle65Path = UIBezierPath(rect: CGRect(x: 289, y: 153, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle65Path.fill()
        
        
        //// Rectangle 66 Drawing
        let rectangle66Path = UIBezierPath(rect: CGRect(x: 272, y: 173, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle66Path.fill()
        
        
        //// Rectangle 67 Drawing
        let rectangle67Path = UIBezierPath(rect: CGRect(x: 289, y: 173, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle67Path.fill()
        
        
        //// Rectangle 68 Drawing
        let rectangle68Rect = CGRect(x: 225, y: 98, width: 34, height: 34)
        let rectangle68Path = UIBezierPath(rect: rectangle68Rect)
        UIColor.black.setFill()
        rectangle68Path.fill()
        let rectangle68TextContent = "OK"
        let rectangle68Style = NSMutableParagraphStyle()
        rectangle68Style.alignment = .center
        let rectangle68FontAttributes = [NSFontAttributeName: UIFont(name: "HelveticaNeue-Bold", size: 12)!, NSForegroundColorAttributeName: UIColor.white, NSParagraphStyleAttributeName: rectangle68Style]
        
        let rectangle68TextHeight: CGFloat = rectangle68TextContent.boundingRect(with: CGSize(width: rectangle68Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: rectangle68FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: rectangle68Rect)
        rectangle68TextContent.draw(in: CGRect(x: rectangle68Rect.minX, y: rectangle68Rect.minY + (rectangle68Rect.height - rectangle68TextHeight) / 2, width: rectangle68Rect.width, height: rectangle68TextHeight), withAttributes: rectangle68FontAttributes)
        context.restoreGState()
        
        
        //// Rectangle 69 Drawing
        let rectangle69Path = UIBezierPath(rect: CGRect(x: 20, y: 98, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle69Path.fill()
        
        
        //// Rectangle 70 Drawing
        let rectangle70Path = UIBezierPath(rect: CGRect(x: 71, y: 98, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle70Path.fill()
        
        
        //// Rectangle 71 Drawing
        let rectangle71Path = UIBezierPath(rect: CGRect(x: 120, y: 98, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle71Path.fill()
        
        
        //// Rectangle 72 Drawing
        let rectangle72Path = UIBezierPath(rect: CGRect(x: 171, y: 98, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle72Path.fill()
        
        
        //// Rectangle 73 Drawing
        let rectangle73Path = UIBezierPath(rect: CGRect(x: 272, y: 98, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle73Path.fill()
        
        
        //// Rectangle 74 Drawing
        let rectangle74Path = UIBezierPath(rect: CGRect(x: 289, y: 98, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle74Path.fill()
        
        
        //// Rectangle 75 Drawing
        let rectangle75Path = UIBezierPath(rect: CGRect(x: 272, y: 118, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle75Path.fill()
        
        
        //// Rectangle 76 Drawing
        let rectangle76Path = UIBezierPath(rect: CGRect(x: 289, y: 118, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle76Path.fill()
        
        
        //// Rectangle 97 Drawing
        let rectangle97Rect = CGRect(x: 225, y: 49, width: 34, height: 34)
        let rectangle97Path = UIBezierPath(rect: rectangle97Rect)
        UIColor.black.setFill()
        rectangle97Path.fill()
        let rectangle97TextContent = "OK"
        let rectangle97Style = NSMutableParagraphStyle()
        rectangle97Style.alignment = .center
        let rectangle97FontAttributes = [NSFontAttributeName: UIFont(name: "HelveticaNeue-Bold", size: 12)!, NSForegroundColorAttributeName: UIColor.white, NSParagraphStyleAttributeName: rectangle97Style]
        
        let rectangle97TextHeight: CGFloat = rectangle97TextContent.boundingRect(with: CGSize(width: rectangle97Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: rectangle97FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: rectangle97Rect)
        rectangle97TextContent.draw(in: CGRect(x: rectangle97Rect.minX, y: rectangle97Rect.minY + (rectangle97Rect.height - rectangle97TextHeight) / 2, width: rectangle97Rect.width, height: rectangle97TextHeight), withAttributes: rectangle97FontAttributes)
        context.restoreGState()
        
        
        //// Rectangle 98 Drawing
        let rectangle98Path = UIBezierPath(rect: CGRect(x: 20, y: 49, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle98Path.fill()
        
        
        //// Rectangle 99 Drawing
        let rectangle99Path = UIBezierPath(rect: CGRect(x: 71, y: 49, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle99Path.fill()
        
        
        //// Rectangle 100 Drawing
        let rectangle100Path = UIBezierPath(rect: CGRect(x: 120, y: 49, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle100Path.fill()
        
        
        //// Rectangle 101 Drawing
        let rectangle101Path = UIBezierPath(rect: CGRect(x: 171, y: 49, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle101Path.fill()
        
        
        //// Rectangle 102 Drawing
        let rectangle102Path = UIBezierPath(rect: CGRect(x: 289, y: 49, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle102Path.fill()
        
        
        //// Rectangle 103 Drawing
        let rectangle103Path = UIBezierPath(rect: CGRect(x: 272, y: 69, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle103Path.fill()
        
        
        //// Rectangle 104 Drawing
        let rectangle104Path = UIBezierPath(rect: CGRect(x: 272, y: 49, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle104Path.fill()
        
        
        //// Rectangle 105 Drawing
        let rectangle105Path = UIBezierPath(rect: CGRect(x: 289, y: 69, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle105Path.fill()
        
        
        //// MastermindRect2 Drawing
        let mastermindRect2Rect = CGRect(x: 81, y: 0, width: 156, height: 33)
        let mastermindRect2Path = UIBezierPath(rect: mastermindRect2Rect)
        UIColor.darkGray.setFill()
        mastermindRect2Path.fill()
        let mastermindRect2TextContent = "MASTERMIND"
        let mastermindRect2Style = NSMutableParagraphStyle()
        mastermindRect2Style.alignment = .center
        let mastermindRect2FontAttributes = [NSFontAttributeName: UIFont(name: "Chalkduster", size: 20)!, NSForegroundColorAttributeName: UIColor.white, NSParagraphStyleAttributeName: mastermindRect2Style]
        
        let mastermindRect2TextHeight: CGFloat = mastermindRect2TextContent.boundingRect(with: CGSize(width: mastermindRect2Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: mastermindRect2FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: mastermindRect2Rect)
        mastermindRect2TextContent.draw(in: CGRect(x: mastermindRect2Rect.minX, y: mastermindRect2Rect.minY + (mastermindRect2Rect.height - mastermindRect2TextHeight) / 2, width: mastermindRect2Rect.width, height: mastermindRect2TextHeight), withAttributes: mastermindRect2FontAttributes)
        context.restoreGState()
        
        
        //// Oval Drawing
        let ovalRect = CGRect(x: 256, y: 0, width: 33, height: 33)
        let ovalPath = UIBezierPath(ovalIn: ovalRect)
        UIColor.white.setFill()
        ovalPath.fill()
        let ovalStyle = NSMutableParagraphStyle()
        ovalStyle.alignment = .center
        let ovalFontAttributes = [NSFontAttributeName: UIFont(name: "Futura-Medium", size: 26)!, NSForegroundColorAttributeName: UIColor.black, NSParagraphStyleAttributeName: ovalStyle]
        
        "i".draw(in: ovalRect, withAttributes: ovalFontAttributes)
        
        
        //// Rectangle 81 Drawing
        let rectangle81Path = UIBezierPath(rect: CGRect(x: 1, y: 488, width: 318, height: 53))
        UIColor.darkGray.setStroke()
        rectangle81Path.lineWidth = 1
        rectangle81Path.stroke()
        
        context.restoreGState()
        
    }
    
    
    
    
    @objc(MastermindStyleKitResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.
        
        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }
            
            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)
            
            switch self {
            case .aspectFit:
                scales.width = min(scales.width, scales.height)
                scales.height = scales.width
            case .aspectFill:
                scales.width = max(scales.width, scales.height)
                scales.height = scales.width
            case .stretch:
                break
            case .center:
                scales.width = 1
                scales.height = 1
            }
            
            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}
