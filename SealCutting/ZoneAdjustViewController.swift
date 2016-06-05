//
//  ZoneAdjustViewController.swift
//  SealCutting
//
//  Created by 刘昊东 on 16/6/5.
//  Copyright © 2016年 haodong, liu. All rights reserved.
//

import Foundation
import UIKit

class ZoneAdjustViewController : UIViewController{
    
    @IBOutlet weak var Text1: UILabel!
    
    @IBOutlet weak var Text2: UILabel!
    
    @IBOutlet weak var Text3: UILabel!
    
    @IBOutlet weak var Text4: UILabel!
    
    @IBAction func Select1(sender: AnyObject) {
        
    }
    
   /**
    * Text1 short
    * Text2 long
    * Text3 long
    * Text4 short
    **/
    @IBAction func Select2(sender: AnyObject) {
        
    }
    
    @IBAction func Select3(sender: AnyObject) {
    
    }
    
    override func viewDidLoad() {
        self.setNeedsStatusBarAppearanceUpdate()
        modalPresentationCapturesStatusBarAppearance = true
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}