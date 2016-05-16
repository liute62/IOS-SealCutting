//
//  FirstInput.swift
//  SealCutting
//
//  Created by 刘昊东 on 16/5/16.
//  Copyright © 2016年 haodong, liu. All rights reserved.
//

import Foundation
import UIKit

class FirstInputViewController: UITableViewController{
    
    @IBAction func toggleMenu(sender: AnyObject) {
        NSNotificationCenter.defaultCenter().postNotificationName("toggleMenu", object: nil)
    }
}