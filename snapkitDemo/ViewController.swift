    //
//  ViewController.swift
//  snapkitDemo
//
//  Created by yian on 08/01/2018.
//  Copyright © 2018 yian. All rights reserved.
//

import UIKit
import SnapKit
    
    
class ViewController: UIViewController {
    
    let arrangeStackView = UIStackView()
    let view1 = YAIconView()
    let view2 = YAIconView()
    let view3 = YAIconView()
    let view4 = YAIconView()
    
    var iconWidth : CGFloat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(arrangeStackView)
        
        arrangeStackView.axis = .horizontal
        arrangeStackView.distribution = .fillEqually
        arrangeStackView.spacing = 0
        arrangeStackView.alignment = .fill

        arrangeStackView.translatesAutoresizingMaskIntoConstraints = false
        
        arrangeStackView.addArrangedSubview(view1)
        arrangeStackView.addArrangedSubview(view2)
        arrangeStackView.addArrangedSubview(view3)
        arrangeStackView.addArrangedSubview(view4)
        
        arrangeStackView.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.height.equalTo(95)
            make.width.equalToSuperview()
        }
        
        
        iconWidth = self.view.frame.width / CGFloat(arrangeStackView.subviews.count)
        
        encapsulationFun(iconView: view1)
        encapsulationFun(iconView: view2)
        encapsulationFun(iconView: view3)
        encapsulationFun(iconView: view4)
   
    }

    @objc func navigationTo(gestureRecognizer: UIGestureRecognizer) {
       
        if gestureRecognizer.state == .ended {
            let goalVc = sefTextTableViewController()
            if let currentView = gestureRecognizer.view {
                switch currentView {
                case view1:
                    print("follow")
                    goalVc.title = "view1"
                    self.navigationController?.pushViewController(goalVc, animated: true)
                    
                case view2:
                    print("more")
                    goalVc.title = "view2"
                    self.navigationController?.pushViewController(goalVc, animated: true)
                    
                case view3:
                    print("deve")
                    goalVc.title = "view3"
                    self.navigationController?.pushViewController(goalVc, animated: true)
                    
                case view4 :
                    print("take")
                    goalVc.title = "view4"
                    self.navigationController?.pushViewController(goalVc, animated: true)
                    
                default :
                    print("other")
                    
                }
            }
        }
    }
    
    
    func encapsulationFun(iconView: YAIconView) -> Void {
        iconView.translatesAutoresizingMaskIntoConstraints = false;
        iconView.snp.makeConstraints{(make) -> Void in
            make.height.equalToSuperview()
            make.width.equalTo(iconWidth!)
        }
        switch iconView {
        case view1:
             iconView.iconViewSetImageAndLabel(iconName: "home-sfxd", tipTitle: "tapView1")
        case view2:
             iconView.iconViewSetImageAndLabel(iconName: "home-hjzl", tipTitle: "tapView2")
        case view3:
             iconView.iconViewSetImageAndLabel(iconName: "home-gd", tipTitle: "tapView3")
        case view4:
             iconView.iconViewSetImageAndLabel(iconName: "home-gasl", tipTitle: "tapView4")
        default:
             break
        }
        iconView.urlNavTap(currentVC: self, action: #selector(navigationTo(gestureRecognizer:)))
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

