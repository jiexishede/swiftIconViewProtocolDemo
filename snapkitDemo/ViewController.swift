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
        // Do any additional setup after loading the view, typically from a nib.
        
        //        let box = YAIconView(frame: view.bounds)
        
        view.addSubview(arrangeStackView)
        
        developCurriculumView.translatesAutoresizingMaskIntoConstraints = false;
        followUpActionView.translatesAutoresizingMaskIntoConstraints = false;
        takeCareSalonView.translatesAutoresizingMaskIntoConstraints = false;
        moreMoreView.translatesAutoresizingMaskIntoConstraints = false;

        
        
        
        developCurriculumView.backgroundColor = UIColor(red: CGFloat(arc4random()%256)/255.0, green: CGFloat(arc4random()%256)/255.0, blue: CGFloat(arc4random()%256)/255.0, alpha: 1)
        followUpActionView.backgroundColor = UIColor(red: CGFloat(arc4random()%256)/255.0, green: CGFloat(arc4random()%256)/255.0, blue: CGFloat(arc4random()%256)/255.0, alpha: 1)
        takeCareSalonView.backgroundColor = UIColor(red: CGFloat(arc4random()%256)/255.0, green: CGFloat(arc4random()%256)/255.0, blue: CGFloat(arc4random()%256)/255.0, alpha: 1)
        moreMoreView.backgroundColor = UIColor(red: CGFloat(arc4random()%256)/255.0, green: CGFloat(arc4random()%256)/255.0, blue: CGFloat(arc4random()%256)/255.0, alpha: 1)
        
        
        //  无效
//        arrangeStackView.backgroundColor = UIColor.red
        arrangeStackView.axis = .horizontal
        arrangeStackView.distribution = .fillEqually
//        arrangeStackView.distribution = .equalSpacing
        arrangeStackView.spacing = 10
        arrangeStackView.alignment = .fill
        // view 貌似是不在关注 frame
        arrangeStackView.translatesAutoresizingMaskIntoConstraints = false
        arrangeStackView.addSubview(followUpActionView)
        arrangeStackView.addSubview(developCurriculumView)
        arrangeStackView.addSubview(moreMoreView)
        arrangeStackView.addSubview(takeCareSalonView)
        
        arrangeStackView.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.height.equalTo(95)
            make.width.equalToSuperview()
        }
        
        
        
//  这个方法
//
//        followUpActionView.snp.makeConstraints { (make) in
//            make.top.bottom.left.right.equalToSuperview()
//            //             make.edges.equalToSuperview()
//        }
////        print(box.frame)
        // result (0.0, 0,0, 0,0, 0,0)
        
        let yaIconWith = self.view.frame.width * 0.25
        
        followUpActionView.snp.makeConstraints{(make) -> Void in
            make.height.equalToSuperview()
            make.width.equalTo(yaIconWith)
        }
        takeCareSalonView.snp.makeConstraints{(make) -> Void in
            make.height.equalToSuperview()
            make.width.equalTo(yaIconWith)
        }
        moreMoreView.snp.makeConstraints{(make) -> Void in
            make.height.equalToSuperview()
            make.width.equalTo(yaIconWith)
        }
        developCurriculumView.snp.makeConstraints{(make) -> Void in
            make.height.equalToSuperview()
            make.width.equalTo(yaIconWith)
        }
        
//        followUpActionView.iconViewSetImageAndLabel(iconName: "home-sfxd", tipTitle: "随访行动")
//        developCurriculumView.iconViewSetImageAndLabel(iconName: "home-hjzl", tipTitle: "患教资料")
//        moreMoreView.iconViewSetImageAndLabel(iconName: "home-gd", tipTitle: "更多")
//        takeCareSalonView.iconViewSetImageAndLabel(iconName: "home-gasl", tipTitle: "关爱沙龙")
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

