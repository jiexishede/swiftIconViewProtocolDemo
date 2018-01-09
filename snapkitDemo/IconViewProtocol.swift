//
//  ICONVProtocol.swift
//  snapkitDemo
//
//  Created by yian on 09/01/2018.
//  Copyright © 2018 yian. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

enum ViewFlexDirectionType {
    case column
    case row
}

protocol IconViewProtocol {
    
}

extension IconViewProtocol where Self:UIView{
    
    func iconViewSetImageAndLabel(type: ViewFlexDirectionType? = .column, iconName: String, tipTitle: String, action: Selector? = nil) {
//        let emptyView = UIView()
//        emptyView.backgroundColor = UIColor.green
//        emptyView.tag = 1024
//        emptyView.translatesAutoresizingMaskIntoConstraints = false;
//        self.addSubview(emptyView)
//        emptyView.snp.makeConstraints { (make) in
////            make.bottom.top.left.right.equalToSuperview()
//            make.edges.equalToSuperview().inset(UIEdgeInsetsMake(20, 20, 20, 20))
        
            let textLabel = UILabel()
//            textLabel.numberOfLines = 1; 0 是多行
            textLabel.text = tipTitle;
        
//            textLabel.center = CGPoint(x: self.center.x, y: self.center.y + 10)
            
            
            
            self.addSubview(textLabel)
            
            textLabel.snp.makeConstraints({ (make) in
                make.centerX.equalToSuperview()
                make.centerY.equalToSuperview().offset(10)
            })
            
            
            let imageView = UIImageView(image: UIImage(named: iconName))
        
        imageView.translatesAutoresizingMaskIntoConstraints = false;
            imageView.contentMode = .center
//            imageView.center = CGPoint(x: self.center.x, y: self.center.y - 25)
            self.addSubview(imageView)
            imageView.snp.makeConstraints({ (make) in
                make.centerX.equalToSuperview()
                make.centerY.equalToSuperview().offset(-25)
            })
        
        
//        view.backgroundColor = [UIColor colorWithRed:random()%256/255.0 green:random()%256/255.0 blue:random()%256/255.0 alpha:1];
        self.backgroundColor = UIColor(red: CGFloat(arc4random()%256)/255.0, green: CGFloat(arc4random()%256)/255.0, blue: CGFloat(arc4random()%256)/255.0, alpha: 1)
    
            
        }
    

    
//    static func navigation(currentVc:UIViewController,destinationVc:UIViewController) ->Void {
//        currentVc.navigationController?.pushViewController(destinationVc, animated: true)
//    }
}
