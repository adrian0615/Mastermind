//
//  Ball.swift
//  Mastermind
//
//  Created by Adrian McDaniel on 1/19/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//
import UIKit
import Foundation

public enum Ball {
    case red
    case orange
    case yellow
    case cyan
    case green
    case blue
    case purple
    case brown
    case empty
    
}

extension Ball {
    var value: UIColor {
        get {
            switch self {
            case .red:
                return UIColor.red
            case .orange:
                return UIColor.orange
            case .yellow:
                return UIColor.yellow
            case .cyan:
                return UIColor.cyan
            case .green:
                return UIColor.green
            case .blue:
                return UIColor.blue
            case .purple:
                return UIColor.purple
            case .brown:
                return UIColor.brown
            case .empty:
                return UIColor.darkGray
            }
        }
    }
}
