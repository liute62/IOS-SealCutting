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
    
    override func viewDidLoad() {
        statusBarInit()
    }
    
    func statusBarInit()  {
        
        
        let nav = self.navigationController?.navigationBar
        //nav?.barStyle = UIBarStyle
        nav?.backgroundColor = UIColor(red: 0.83921568627450982, green: 0.79607843137254897, blue: 0.58823529411764708, alpha: 1)
        nav?.barTintColor = UIColor(red: 0.83921568627450982, green: 0.79607843137254897, blue: 0.58823529411764708, alpha: 1)
        nav?.translucent = false
//        let item = UIBarButtonItem(title: "", style: .Plain, target: self, action: nil)
//        self.navigationItem.leftBarButtonItem = item;
//        self.navigationItem.leftBarButtonItem?.image = UIImage(named: "goback")
//        self.navigationItem.leftBarButtonItem?.tintColor = UIColor.blackColor()
        
        //Status bar style and visibility
        UIApplication.sharedApplication().statusBarHidden = false
        //UIApplication.sharedApplication().statusBarStyle = .LightContent
        
        //Change status bar color
        let statusBar: UIView = UIApplication.sharedApplication().valueForKey("statusBar") as! UIView
        if statusBar.respondsToSelector("setBackgroundColor:") {
            statusBar.backgroundColor = UIColor(red: 0.83921568627450982, green: 0.79607843137254897, blue: 0.58823529411764708, alpha: 1)
        }
    }

}