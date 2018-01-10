//
//  urlNavProtocol.swift
//  snapkitDemo
//
//  Created by yian on 10/01/2018.
//  Copyright © 2018 yian. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

enum urlNavType {
    case remote
    case local
}

protocol urlNavProtocol {
    
}

extension urlNavProtocol where Self:UIView{
    
    func urlNavTap(currentVC:UIViewController,action: Selector? = nil) -> Void {
        self.addGestureRecognizer(UITapGestureRecognizer(target: currentVC, action: action!))
    }

}

