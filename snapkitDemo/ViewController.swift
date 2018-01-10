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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(arrangeStackView)
        
        developCurriculumView.translatesAutoresizingMaskIntoConstraints = false;
        followUpActionView.translatesAutoresizingMaskIntoConstraints = false;
        takeCareSalonView.translatesAutoresizingMaskIntoConstraints = false;
        moreMoreView.translatesAutoresizingMaskIntoConstraints = false;    

        arrangeStackView.axis = .horizontal
        arrangeStackView.distribution = .fillEqually

        arrangeStackView.spacing = 0
        arrangeStackView.alignment = .fill

        arrangeStackView.translatesAutoresizingMaskIntoConstraints = false
        
        arrangeStackView.addArrangedSubview(developCurriculumView)
        arrangeStackView.addArrangedSubview(takeCareSalonView)
        arrangeStackView.addArrangedSubview(followUpActionView)
//        arrangeStackView.addArrangedSubview(moreMoreView)
        
        arrangeStackView.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.height.equalTo(95)
            make.width.equalToSuperview()
        }
        
        let yaIconWith = self.view.frame.width / CGFloat(self.view.subviews.count)
    
        followUpActionView.snp.makeConstraints{(make) -> Void in
            make.height.equalToSuperview()
            make.width.equalTo(yaIconWith)
        }
        takeCareSalonView.snp.makeConstraints{(make) -> Void in
            make.height.equalToSuperview()
            make.width.equalTo(yaIconWith)
        }
//        moreMoreView.snp.makeConstraints{(make) -> Void in
//            make.height.equalToSuperview()
//            make.width.equalTo(yaIconWith)
//        }
        developCurriculumView.snp.makeConstraints{(make) -> Void in
            make.height.equalToSuperview()
            make.width.equalTo(yaIconWith)
        }
    
        followUpActionView.iconViewSetImageAndLabel(iconName: "home-sfxd", tipTitle: "随访行动")
                developCurriculumView.iconViewSetImageAndLabel(iconName: "home-hjzl", tipTitle: "患教资料")
                moreMoreView.iconViewSetImageAndLabel(iconName: "home-gd", tipTitle: "更多")
                takeCareSalonView.iconViewSetImageAndLabel(iconName: "home-gasl", tipTitle: "关爱沙龙")
        followUpActionView.urlNavTap(currentVC:self, action: #selector(navigationTo))
        
//        let tagGest = UITapGestureRecognizer(target: self, action: #selector(navigationTo(gestureRecognizer:)))
        
//        followUpActionView.addGestureRecognizer(tagGest)
        
        followUpActionView.urlNavTap(currentVC: self, action: #selector(navigationTo(gestureRecognizer:)))
        takeCareSalonView.urlNavTap(currentVC: self, action: #selector(navigationTo(gestureRecognizer:)))
//        moreMoreView.urlNavTap(currentVC: self, action: #selector(navigationTo(gestureRecognizer:)))
        developCurriculumView.urlNavTap(currentVC: self, action: #selector(navigationTo(gestureRecognizer:)))
        
    }
    
    
    @objc func navigationTo(gestureRecognizer: UIGestureRecognizer) {
       
        if gestureRecognizer.state == .ended {
            if let currentView = gestureRecognizer.view {
                switch currentView {
                case followUpActionView:
                    print("follow")
                    let goalVc = sefTextTableViewController()
                    self.navigationController?.pushViewController(goalVc, animated: true)
                    
//                case moreMoreView:
//                    print("more")
//                    let goalVc = sefTextTableViewController()
//                    self.navigationController?.pushViewController(goalVc, animated: true)
//
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
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

