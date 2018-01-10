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
    let followUpActionView = YAIconView()
    let developCurriculumView = YAIconView()
    let moreMoreView = YAIconView()
    let takeCareSalonView = YAIconView()
    
    var iconWidth : CGFloat?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(arrangeStackView)
        
        arrangeStackView.axis = .horizontal
        arrangeStackView.distribution = .fillEqually
        arrangeStackView.spacing = 0
        arrangeStackView.alignment = .fill

        arrangeStackView.translatesAutoresizingMaskIntoConstraints = false
        
        arrangeStackView.addArrangedSubview(developCurriculumView)
        arrangeStackView.addArrangedSubview(takeCareSalonView)
        arrangeStackView.addArrangedSubview(followUpActionView)
        arrangeStackView.addArrangedSubview(moreMoreView)
        
        iconWidth = self.view.frame.width / CGFloat(arrangeStackView.subviews.count)
        
        arrangeStackView.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.height.equalTo(95)
            make.width.equalToSuperview()
        }
        
        encapsulationFun(iconView: followUpActionView)
        encapsulationFun(iconView: takeCareSalonView)
        encapsulationFun(iconView: developCurriculumView)
        encapsulationFun(iconView: moreMoreView)
   
    }
    
    
    @objc func navigationTo(gestureRecognizer: UIGestureRecognizer) {
       
        if gestureRecognizer.state == .ended {
            if let currentView = gestureRecognizer.view {
                switch currentView {
                case followUpActionView:
                    print("follow")
                    let goalVc = sefTextTableViewController()
                    self.navigationController?.pushViewController(goalVc, animated: true)
                    
                case moreMoreView:
                    print("more")
                    let goalVc = sefTextTableViewController()
                    self.navigationController?.pushViewController(goalVc, animated: true)
                    
                case developCurriculumView:
                    print("deve")
                    let goalVc = sefTextTableViewController()
                    self.navigationController?.pushViewController(goalVc, animated: true)
                    
                case takeCareSalonView :
                    print("take")
                    let goalVc = sefTextTableViewController()
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
        case followUpActionView:
             iconView.iconViewSetImageAndLabel(iconName: "home-sfxd", tipTitle: "随访行动")
        case developCurriculumView:
             iconView.iconViewSetImageAndLabel(iconName: "home-hjzl", tipTitle: "患教资料")
        case moreMoreView:
             iconView.iconViewSetImageAndLabel(iconName: "home-gd", tipTitle: "更多")
        case takeCareSalonView:
             iconView.iconViewSetImageAndLabel(iconName: "home-gasl", tipTitle: "关爱沙龙")
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

