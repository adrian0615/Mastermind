//
//  MastermindStyleKit.swift
//  Mastermind
//
//  Created by Adrian McDaniel on 1/21/17.
//  Copyright © 2017 CompanyName. All rights reserved.
//



import UIKit

public class MastermindStyleKit : NSObject {
    
    //// Drawing Methods
    
    //define view size
    //self.mTableView.frame = self.view.bounds
    //define resizing
    //self.mTableView.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
    
    public dynamic class func drawMastermind(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 320, height: 480), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 320, height: 480), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 320, y: resizedFrame.height / 480)
        context.setFillColor(UIColor.lightGray.cgColor)
        context.fill(resizedFrame)
        
        
        
        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRect(x: 5, y: 426, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectanglePath.fill()
        
        
        //// Rectangle 2 Drawing
        let rectangle2Path = UIBezierPath(rect: CGRect(x: 46, y: 426, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle2Path.fill()
        
        
        //// Rectangle 3 Drawing
        let rectangle3Path = UIBezierPath(rect: CGRect(x: 85, y: 426, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle3Path.fill()
        
        
        //// Rectangle 4 Drawing
        let rectangle4Path = UIBezierPath(rect: CGRect(x: 164, y: 426, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle4Path.fill()
        
        
        //// Rectangle 5 Drawing
        let rectangle5Path = UIBezierPath(rect: CGRect(x: 203, y: 426, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle5Path.fill()
        
        
        //// Rectangle 6 Drawing
        let rectangle6Path = UIBezierPath(rect: CGRect(x: 124, y: 426, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle6Path.fill()
        
        
        //// Rectangle 7 Drawing
        let rectangle7Path = UIBezierPath(rect: CGRect(x: 243, y: 426, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle7Path.fill()
        
        
        //// Rectangle 8 Drawing
        let rectangle8Path = UIBezierPath(rect: CGRect(x: 282, y: 426, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle8Path.fill()
        
        
        //// MASTERMIND Drawing
        let mASTERMINDRect = CGRect(x: 84, y: 16, width: 156, height: 33)
        let mASTERMINDPath = UIBezierPath(rect: mASTERMINDRect)
        UIColor.darkGray.setFill()
        mASTERMINDPath.fill()
        let mASTERMINDTextContent = "MASTERMIND"
        let mASTERMINDStyle = NSMutableParagraphStyle()
        mASTERMINDStyle.alignment = .center
        let mASTERMINDFontAttributes = [NSFontAttributeName: UIFont(name: "Chalkduster", size: 20)!, NSForegroundColorAttributeName: UIColor.white, NSParagraphStyleAttributeName: mASTERMINDStyle]
        
        let mASTERMINDTextHeight: CGFloat = mASTERMINDTextContent.boundingRect(with: CGSize(width: mASTERMINDRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: mASTERMINDFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: mASTERMINDRect)
        mASTERMINDTextContent.draw(in: CGRect(x: mASTERMINDRect.minX, y: mASTERMINDRect.minY + (mASTERMINDRect.height - mASTERMINDTextHeight) / 2, width: mASTERMINDRect.width, height: mASTERMINDTextHeight), withAttributes: mASTERMINDFontAttributes)
        context.restoreGState()
        
        
        // Info Drawing
        let ovalPathRect = CGRect(x: 270, y: 16, width: 33, height: 33)
        let ovalPath = UIBezierPath(ovalIn: ovalPathRect)
        UIColor.white.setFill()
        ovalPath.fill()
        let ovalPathTextContent = "i"
        let ovalPathStyle = NSMutableParagraphStyle()
        ovalPathStyle.alignment = .center
        let ovalPathFontAttributes = [NSFontAttributeName: UIFont(name: "Futura", size: 20)!, NSForegroundColorAttributeName: UIColor.black, NSParagraphStyleAttributeName: ovalPathStyle]
        let ovalPathTextHeight: CGFloat = ovalPathTextContent.boundingRect(with: CGSize(width: ovalPathRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: ovalPathFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: ovalPathRect)
        ovalPathTextContent.draw(in: CGRect(x: ovalPathRect.minX, y: ovalPathRect.minY + (ovalPathRect.height - ovalPathTextHeight) / 2, width: ovalPathRect.width, height: ovalPathTextHeight), withAttributes: ovalPathFontAttributes)
        context.restoreGState()

        
        //// Rectangle 9 Drawing
        let rectangle9Rect = CGRect(x: 223, y: 373, width: 34, height: 34)
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
        
        
        //// Rectangle 10 Drawing
        let rectangle10Rect = CGRect(x: 223, y: 328, width: 34, height: 34)
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
        let rectangle11Rect = CGRect(x: 223, y: 283, width: 34, height: 34)
        let rectangle11Path = UIBezierPath(rect: rectangle11Rect)
        UIColor.black.setFill()
        rectangle11Path.fill()
        let rectangle11TextContent = "OK"
        let rectangle11Style = NSMutableParagraphStyle()
        rectangle11Style.alignment = .center
        let rectangle11FontAttributes = [NSFontAttributeName: UIFont(name: "HelveticaNeue-Bold", size: 12)!, NSForegroundColorAttributeName: UIColor.white, NSParagraphStyleAttributeName: rectangle11Style]
        
        let rectangle11TextHeight: CGFloat = rectangle11TextContent.boundingRect(with: CGSize(width: rectangle11Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: rectangle11FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: rectangle11Rect)
        rectangle11TextContent.draw(in: CGRect(x: rectangle11Rect.minX, y: rectangle11Rect.minY + (rectangle11Rect.height - rectangle11TextHeight) / 2, width: rectangle11Rect.width, height: rectangle11TextHeight), withAttributes: rectangle11FontAttributes)
        context.restoreGState()
        
        
        //// Rectangle 12 Drawing
        let rectangle12Rect = CGRect(x: 223, y: 239, width: 34, height: 34)
        let rectangle12Path = UIBezierPath(rect: rectangle12Rect)
        UIColor.black.setFill()
        rectangle12Path.fill()
        let rectangle12TextContent = "OK"
        let rectangle12Style = NSMutableParagraphStyle()
        rectangle12Style.alignment = .center
        let rectangle12FontAttributes = [NSFontAttributeName: UIFont(name: "HelveticaNeue-Bold", size: 12)!, NSForegroundColorAttributeName: UIColor.white, NSParagraphStyleAttributeName: rectangle12Style]
        
        let rectangle12TextHeight: CGFloat = rectangle12TextContent.boundingRect(with: CGSize(width: rectangle12Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: rectangle12FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: rectangle12Rect)
        rectangle12TextContent.draw(in: CGRect(x: rectangle12Rect.minX, y: rectangle12Rect.minY + (rectangle12Rect.height - rectangle12TextHeight) / 2, width: rectangle12Rect.width, height: rectangle12TextHeight), withAttributes: rectangle12FontAttributes)
        context.restoreGState()
        
        
        //// Rectangle 13 Drawing
        let rectangle13Rect = CGRect(x: 223, y: 195, width: 34, height: 34)
        let rectangle13Path = UIBezierPath(rect: rectangle13Rect)
        UIColor.black.setFill()
        rectangle13Path.fill()
        let rectangle13TextContent = "OK"
        let rectangle13Style = NSMutableParagraphStyle()
        rectangle13Style.alignment = .center
        let rectangle13FontAttributes = [NSFontAttributeName: UIFont(name: "HelveticaNeue-Bold", size: 12)!, NSForegroundColorAttributeName: UIColor.white, NSParagraphStyleAttributeName: rectangle13Style]
        
        let rectangle13TextHeight: CGFloat = rectangle13TextContent.boundingRect(with: CGSize(width: rectangle13Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: rectangle13FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: rectangle13Rect)
        rectangle13TextContent.draw(in: CGRect(x: rectangle13Rect.minX, y: rectangle13Rect.minY + (rectangle13Rect.height - rectangle13TextHeight) / 2, width: rectangle13Rect.width, height: rectangle13TextHeight), withAttributes: rectangle13FontAttributes)
        context.restoreGState()
        
        
        //// Rectangle 14 Drawing
        let rectangle14Rect = CGRect(x: 223, y: 150, width: 34, height: 34)
        let rectangle14Path = UIBezierPath(rect: rectangle14Rect)
        UIColor.black.setFill()
        rectangle14Path.fill()
        let rectangle14TextContent = "OK"
        let rectangle14Style = NSMutableParagraphStyle()
        rectangle14Style.alignment = .center
        let rectangle14FontAttributes = [NSFontAttributeName: UIFont(name: "HelveticaNeue-Bold", size: 12)!, NSForegroundColorAttributeName: UIColor.white, NSParagraphStyleAttributeName: rectangle14Style]
        
        let rectangle14TextHeight: CGFloat = rectangle14TextContent.boundingRect(with: CGSize(width: rectangle14Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: rectangle14FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: rectangle14Rect)
        rectangle14TextContent.draw(in: CGRect(x: rectangle14Rect.minX, y: rectangle14Rect.minY + (rectangle14Rect.height - rectangle14TextHeight) / 2, width: rectangle14Rect.width, height: rectangle14TextHeight), withAttributes: rectangle14FontAttributes)
        context.restoreGState()
        
        
        //// Rectangle 15 Drawing
        let rectangle15Rect = CGRect(x: 223, y: 105, width: 34, height: 34)
        let rectangle15Path = UIBezierPath(rect: rectangle15Rect)
        UIColor.black.setFill()
        rectangle15Path.fill()
        let rectangle15TextContent = "OK"
        let rectangle15Style = NSMutableParagraphStyle()
        rectangle15Style.alignment = .center
        let rectangle15FontAttributes = [NSFontAttributeName: UIFont(name: "HelveticaNeue-Bold", size: 12)!, NSForegroundColorAttributeName: UIColor.white, NSParagraphStyleAttributeName: rectangle15Style]
        
        let rectangle15TextHeight: CGFloat = rectangle15TextContent.boundingRect(with: CGSize(width: rectangle15Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: rectangle15FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: rectangle15Rect)
        rectangle15TextContent.draw(in: CGRect(x: rectangle15Rect.minX, y: rectangle15Rect.minY + (rectangle15Rect.height - rectangle15TextHeight) / 2, width: rectangle15Rect.width, height: rectangle15TextHeight), withAttributes: rectangle15FontAttributes)
        context.restoreGState()
        
        
        //// Rectangle 16 Drawing
        let rectangle16Rect = CGRect(x: 223, y: 61, width: 34, height: 34)
        let rectangle16Path = UIBezierPath(rect: rectangle16Rect)
        UIColor.black.setFill()
        rectangle16Path.fill()
        let rectangle16TextContent = "OK"
        let rectangle16Style = NSMutableParagraphStyle()
        rectangle16Style.alignment = .center
        let rectangle16FontAttributes = [NSFontAttributeName: UIFont(name: "HelveticaNeue-Bold", size: 12)!, NSForegroundColorAttributeName: UIColor.white, NSParagraphStyleAttributeName: rectangle16Style]
        
        let rectangle16TextHeight: CGFloat = rectangle16TextContent.boundingRect(with: CGSize(width: rectangle16Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: rectangle16FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: rectangle16Rect)
        rectangle16TextContent.draw(in: CGRect(x: rectangle16Rect.minX, y: rectangle16Rect.minY + (rectangle16Rect.height - rectangle16TextHeight) / 2, width: rectangle16Rect.width, height: rectangle16TextHeight), withAttributes: rectangle16FontAttributes)
        context.restoreGState()
        
        
        //// Rectangle 17 Drawing
        let rectangle17Path = UIBezierPath(rect: CGRect(x: 18, y: 373, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle17Path.fill()
        
        
        //// Rectangle 18 Drawing
        let rectangle18Path = UIBezierPath(rect: CGRect(x: 69, y: 373, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle18Path.fill()
        
        
        //// Rectangle 19 Drawing
        let rectangle19Path = UIBezierPath(rect: CGRect(x: 118, y: 373, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle19Path.fill()
        
        
        //// Rectangle 20 Drawing
        let rectangle20Path = UIBezierPath(rect: CGRect(x: 169, y: 373, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle20Path.fill()
        
        
        //// Rectangle 21 Drawing
        let rectangle21Path = UIBezierPath(rect: CGRect(x: 18, y: 328, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle21Path.fill()
        
        
        //// Rectangle 22 Drawing
        let rectangle22Path = UIBezierPath(rect: CGRect(x: 69, y: 328, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle22Path.fill()
        
        
        //// Rectangle 23 Drawing
        let rectangle23Path = UIBezierPath(rect: CGRect(x: 118, y: 328, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle23Path.fill()
        
        
        //// Rectangle 24 Drawing
        let rectangle24Path = UIBezierPath(rect: CGRect(x: 169, y: 328, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle24Path.fill()
        
        
        //// Rectangle 25 Drawing
        let rectangle25Path = UIBezierPath(rect: CGRect(x: 18, y: 283, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle25Path.fill()
        
        
        //// Rectangle 26 Drawing
        let rectangle26Path = UIBezierPath(rect: CGRect(x: 69, y: 283, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle26Path.fill()
        
        
        //// Rectangle 27 Drawing
        let rectangle27Path = UIBezierPath(rect: CGRect(x: 118, y: 283, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle27Path.fill()
        
        
        //// Rectangle 28 Drawing
        let rectangle28Path = UIBezierPath(rect: CGRect(x: 169, y: 283, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle28Path.fill()
        
        
        //// Rectangle 29 Drawing
        let rectangle29Path = UIBezierPath(rect: CGRect(x: 18, y: 238, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle29Path.fill()
        
        
        //// Rectangle 30 Drawing
        let rectangle30Path = UIBezierPath(rect: CGRect(x: 69, y: 238, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle30Path.fill()
        
        
        //// Rectangle 31 Drawing
        let rectangle31Path = UIBezierPath(rect: CGRect(x: 118, y: 238, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle31Path.fill()
        
        
        //// Rectangle 32 Drawing
        let rectangle32Path = UIBezierPath(rect: CGRect(x: 169, y: 238, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle32Path.fill()
        
        
        //// Rectangle 33 Drawing
        let rectangle33Path = UIBezierPath(rect: CGRect(x: 18, y: 195, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle33Path.fill()
        
        
        //// Rectangle 34 Drawing
        let rectangle34Path = UIBezierPath(rect: CGRect(x: 69, y: 195, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle34Path.fill()
        
        
        //// Rectangle 35 Drawing
        let rectangle35Path = UIBezierPath(rect: CGRect(x: 118, y: 195, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle35Path.fill()
        
        
        //// Rectangle 36 Drawing
        let rectangle36Path = UIBezierPath(rect: CGRect(x: 169, y: 195, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle36Path.fill()
        
        
        //// Rectangle 37 Drawing
        let rectangle37Path = UIBezierPath(rect: CGRect(x: 18, y: 150, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle37Path.fill()
        
        
        //// Rectangle 38 Drawing
        let rectangle38Path = UIBezierPath(rect: CGRect(x: 69, y: 150, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle38Path.fill()
        
        
        //// Rectangle 39 Drawing
        let rectangle39Path = UIBezierPath(rect: CGRect(x: 118, y: 150, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle39Path.fill()
        
        
        //// Rectangle 40 Drawing
        let rectangle40Path = UIBezierPath(rect: CGRect(x: 169, y: 150, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle40Path.fill()
        
        
        //// Rectangle 41 Drawing
        let rectangle41Path = UIBezierPath(rect: CGRect(x: 18, y: 105, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle41Path.fill()
        
        
        //// Rectangle 42 Drawing
        let rectangle42Path = UIBezierPath(rect: CGRect(x: 69, y: 105, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle42Path.fill()
        
        
        //// Rectangle 43 Drawing
        let rectangle43Path = UIBezierPath(rect: CGRect(x: 118, y: 105, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle43Path.fill()
        
        
        //// Rectangle 44 Drawing
        let rectangle44Path = UIBezierPath(rect: CGRect(x: 169, y: 105, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle44Path.fill()
        
        
        //// Rectangle 45 Drawing
        let rectangle45Path = UIBezierPath(rect: CGRect(x: 18, y: 60, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle45Path.fill()
        
        
        //// Rectangle 46 Drawing
        let rectangle46Path = UIBezierPath(rect: CGRect(x: 69, y: 60, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle46Path.fill()
        
        
        //// Rectangle 47 Drawing
        let rectangle47Path = UIBezierPath(rect: CGRect(x: 118, y: 60, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle47Path.fill()
        
        
        //// Rectangle 48 Drawing
        let rectangle48Path = UIBezierPath(rect: CGRect(x: 169, y: 60, width: 34, height: 34))
        UIColor.darkGray.setFill()
        rectangle48Path.fill()
        
        
        //// Rectangle 49 Drawing
        let rectangle49Path = UIBezierPath(rect: CGRect(x: 270, y: 61, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle49Path.fill()
        
        
        //// Rectangle 50 Drawing
        let rectangle50Path = UIBezierPath(rect: CGRect(x: 287, y: 61, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle50Path.fill()
        
        
        //// Rectangle 51 Drawing
        let rectangle51Path = UIBezierPath(rect: CGRect(x: 270, y: 81, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle51Path.fill()
        
        
        //// Rectangle 52 Drawing
        let rectangle52Path = UIBezierPath(rect: CGRect(x: 287, y: 81, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle52Path.fill()
        
        
        //// Rectangle 53 Drawing
        let rectangle53Path = UIBezierPath(rect: CGRect(x: 270, y: 105, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle53Path.fill()
        
        
        //// Rectangle 54 Drawing
        let rectangle54Path = UIBezierPath(rect: CGRect(x: 287, y: 105, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle54Path.fill()
        
        
        //// Rectangle 55 Drawing
        let rectangle55Path = UIBezierPath(rect: CGRect(x: 270, y: 125, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle55Path.fill()
        
        
        //// Rectangle 56 Drawing
        let rectangle56Path = UIBezierPath(rect: CGRect(x: 287, y: 125, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle56Path.fill()
        
        
        //// Rectangle 57 Drawing
        let rectangle57Path = UIBezierPath(rect: CGRect(x: 270, y: 150, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle57Path.fill()
        
        
        //// Rectangle 58 Drawing
        let rectangle58Path = UIBezierPath(rect: CGRect(x: 287, y: 150, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle58Path.fill()
        
        
        //// Rectangle 59 Drawing
        let rectangle59Path = UIBezierPath(rect: CGRect(x: 270, y: 170, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle59Path.fill()
        
        
        //// Rectangle 60 Drawing
        let rectangle60Path = UIBezierPath(rect: CGRect(x: 287, y: 170, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle60Path.fill()
        
        
        //// Rectangle 61 Drawing
        let rectangle61Path = UIBezierPath(rect: CGRect(x: 270, y: 195, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle61Path.fill()
        
        
        //// Rectangle 62 Drawing
        let rectangle62Path = UIBezierPath(rect: CGRect(x: 287, y: 195, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle62Path.fill()
        
        
        //// Rectangle 63 Drawing
        let rectangle63Path = UIBezierPath(rect: CGRect(x: 270, y: 215, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle63Path.fill()
        
        
        //// Rectangle 64 Drawing
        let rectangle64Path = UIBezierPath(rect: CGRect(x: 287, y: 215, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle64Path.fill()
        
        
        //// Rectangle 65 Drawing
        let rectangle65Path = UIBezierPath(rect: CGRect(x: 270, y: 239, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle65Path.fill()
        
        
        //// Rectangle 66 Drawing
        let rectangle66Path = UIBezierPath(rect: CGRect(x: 287, y: 239, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle66Path.fill()
        
        
        //// Rectangle 67 Drawing
        let rectangle67Path = UIBezierPath(rect: CGRect(x: 270, y: 259, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle67Path.fill()
        
        
        //// Rectangle 68 Drawing
        let rectangle68Path = UIBezierPath(rect: CGRect(x: 287, y: 259, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle68Path.fill()
        
        
        //// Rectangle 69 Drawing
        let rectangle69Path = UIBezierPath(rect: CGRect(x: 270, y: 283, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle69Path.fill()
        
        
        //// Rectangle 70 Drawing
        let rectangle70Path = UIBezierPath(rect: CGRect(x: 287, y: 283, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle70Path.fill()
        
        
        //// Rectangle 71 Drawing
        let rectangle71Path = UIBezierPath(rect: CGRect(x: 270, y: 303, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle71Path.fill()
        
        
        //// Rectangle 72 Drawing
        let rectangle72Path = UIBezierPath(rect: CGRect(x: 287, y: 303, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle72Path.fill()
        
        
        //// Rectangle 73 Drawing
        let rectangle73Path = UIBezierPath(rect: CGRect(x: 270, y: 328, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle73Path.fill()
        
        
        //// Rectangle 74 Drawing
        let rectangle74Path = UIBezierPath(rect: CGRect(x: 287, y: 328, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle74Path.fill()
        
        
        //// Rectangle 75 Drawing
        let rectangle75Path = UIBezierPath(rect: CGRect(x: 270, y: 348, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle75Path.fill()
        
        
        //// Rectangle 76 Drawing
        let rectangle76Path = UIBezierPath(rect: CGRect(x: 287, y: 348, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle76Path.fill()
        
        
        //// Rectangle 77 Drawing
        let rectangle77Path = UIBezierPath(rect: CGRect(x: 270, y: 373, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle77Path.fill()
        
        
        //// Rectangle 78 Drawing
        let rectangle78Path = UIBezierPath(rect: CGRect(x: 287, y: 373, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle78Path.fill()
        
        
        //// Rectangle 79 Drawing
        let rectangle79Path = UIBezierPath(rect: CGRect(x: 270, y: 393, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle79Path.fill()
        
        
        //// Rectangle 80 Drawing
        let rectangle80Path = UIBezierPath(rect: CGRect(x: 287, y: 393, width: 13, height: 14))
        UIColor.darkGray.setFill()
        rectangle80Path.fill()
        
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
