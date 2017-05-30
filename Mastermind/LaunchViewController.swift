//
//  LaunchViewController.swift
//  Mastermind
//
//  Created by Adrian McDaniel on 5/24/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = Timer.scheduledTimer(timeInterval: 4.1, target: self, selector: #selector(self.gotoHome), userInfo: nil, repeats: false)
        // Do any additional setup after loading the view.
    }
    
    func gotoHome() {
        let height = self.view.bounds.size.height
        
        if height < 667.0 {
            
            let homeVC = self.storyboard!.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            
            self.present(homeVC, animated: true, completion: nil)
            
        } else if height >= 667.0 && height < 736.0 {
            let homeVC = self.storyboard!.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
            
            self.present(homeVC, animated: true, completion: nil)
        } else {
            let homeVC = self.storyboard!.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
            
            self.present(homeVC, animated: true, completion: nil)
        }
        
    }

}
