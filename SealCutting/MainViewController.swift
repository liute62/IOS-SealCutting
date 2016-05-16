//
//  MainViewController.swift
//  SealCutting
//
//  Created by 刘昊东 on 16/5/16.
//  Copyright © 2016年 haodong, liu. All rights reserved.
//

import Foundation
import UIKit

class MainViewController : UIViewController{
    
    let leftMenuWidth:CGFloat = 260;
        
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        dispatch_async(dispatch_get_main_queue()){
            self.closeMenu(false)
        }
        // Tab bar controller's child pages have a top-left button toggles the menu
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(MainViewController.toggleMenu), name: "toggleMenu", object: nil)
    }
    
    // Use scrollview content offset-x to slide the menu.
    func closeMenu(animated:Bool = true){
        scrollView.setContentOffset(CGPoint(x: leftMenuWidth, y: 0), animated: animated)
    }
    
    // Open is the natural state of the menu because of how the storyboard is setup.
    func openMenu(){
        print("opening menu")
        scrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
    }

    func toggleMenu(){
        scrollView.contentOffset.x == 0  ? closeMenu() : openMenu()
    }
    

}