//
//  DetailAdjustViewController.swift
//  SealCutting
//
//  Created by 刘昊东 on 16/6/2.
//  Copyright © 2016年 haodong, liu. All rights reserved.
//

import Foundation
import UIKit

class DetailAdjustViewController : UIViewController{
    
    
    @IBOutlet weak var TextFont1: UILabel!
    
    @IBAction func mField(sender: AnyObject) {
        
    }
    override func viewDidLoad() {
        resInit()
        addSaveBtn()
    }
    
    func resInit() {
    }    
    
    func addSaveBtn(){
        let button =   UIButton(type: .System)
        button.frame = CGRectMake(220, 0, 65, 30)
        button.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        button.setTitle("保存", forState: .Normal)
        button.addTarget(self, action: #selector(DetailAdjustViewController.saveDetail), forControlEvents: .TouchUpInside)
        let rightBarBtn = UIBarButtonItem(customView: button)
        let spacer = UIBarButtonItem(barButtonSystemItem: .FixedSpace, target: nil,
                                     action: nil)
        spacer.width = -10;
        self.navigationItem.rightBarButtonItems = [spacer,rightBarBtn]
    }
    
    func saveDetail(){
        let saveDetail = SaveDetailViewController()
        self.navigationController?.pushViewController(saveDetail, animated: false)
    }
}