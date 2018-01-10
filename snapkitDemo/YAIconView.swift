//
//  YAIconView.swift
//  snapkitDemo
//
//  Created by yian on 09/01/2018.
//  Copyright © 2018 yian. All rights reserved.
//

import UIKit
import SnapKit

class YAIconView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

extension YAIconView:IconViewProtocol,urlNavProtocol {
    
    func setImageAndTitle(image:String,text:String){
        iconViewSetImageAndLabel(iconName: image, tipTitle: text)
    }
    
    func addTap(currentVc:UIViewController,action: Selector? = nil) -> Void {
        urlNavTap(currentVC:currentVc , action: action)
    }
}
