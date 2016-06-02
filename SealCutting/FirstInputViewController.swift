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
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //根据storyboard获取controller
        let sb = UIStoryboard(name:"TemplateSelected", bundle: nil)
        let templateSelected = sb.instantiateViewControllerWithIdentifier("TemplateSelected") as! TemplateSelectedViewController
        self.navigationController?.pushViewController(templateSelected, animated: true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == ""{
            
        }
    }
    
    func prepareForPass(indexPath:NSIndexPath) {
        self.tableView.deselectRowAtIndexPath(indexPath, animated: false)
    }
}