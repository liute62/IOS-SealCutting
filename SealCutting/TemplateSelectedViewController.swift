//
//  TemplateSelectedViewController.swift
//  SealCutting
//
//  Created by 刘昊东 on 16/6/2.
//  Copyright © 2016年 haodong, liu. All rights reserved.
//

import Foundation
import UIKit

class TemplateSelectedViewController : UICollectionViewController{

    
    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    
    private let defaultImage = ["mode1","mode2","mode3","mode4","mode5","mode6"];
        
    private let defaultLabel = ["朱白印","常规印","白纹套边","阴阳印","常规印","常规印"];
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return defaultLabel.count
    }
    
    override func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionElementKindSectionHeader:
            let headerView =
                collectionView.dequeueReusableSupplementaryViewOfKind(kind,withReuseIdentifier: "TemplateHeader",forIndexPath: indexPath)
            return headerView
        case UICollectionElementKindSectionFooter:
            let footerView =
                collectionView.dequeueReusableSupplementaryViewOfKind(kind,withReuseIdentifier: "TemplateFooter",forIndexPath: indexPath)
            return footerView
        default:
            assert(false, "Unexpected element kind")
        }
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("ModelCell", forIndexPath: indexPath)
        let imageView = cell.viewWithTag(10000) as! UIImageView
        let label = cell.viewWithTag(10001) as! UILabel
        imageView.image = UIImage(named : defaultImage[indexPath.row])
        label.text = defaultLabel[indexPath.row];
        let bg = UIImageView(image: UIImage(named: "modebg"));
        cell.backgroundView = bg;
        return cell
    }
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath){
        let sb = UIStoryboard(name:"DetailAdjust", bundle: nil)
        let detailAdjust = sb.instantiateViewControllerWithIdentifier("DetailAdjust")
        self.navigationController?.pushViewController(detailAdjust, animated: true)
        
    }

}