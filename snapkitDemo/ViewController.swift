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
    let followUpActionView = UIView()
    let developCurriculumView = UIView()
    let moreMoreView = UIView()
    let takeCareSalonView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(arrangeStackView)
        
        developCurriculumView.translatesAutoresizingMaskIntoConstraints = false;
        followUpActionView.translatesAutoresizingMaskIntoConstraints = false;
        takeCareSalonView.translatesAutoresizingMaskIntoConstraints = false;
        moreMoreView.translatesAutoresizingMaskIntoConstraints = false;

        developCurriculumView.backgroundColor = UIColor(red: CGFloat(arc4random()%256)/255.0, green: CGFloat(arc4random()%256)/255.0, blue: CGFloat(arc4random()%256)/255.0, alpha: 1)
        followUpActionView.backgroundColor = UIColor(red: CGFloat(arc4random()%256)/255.0, green: CGFloat(arc4random()%256)/255.0, blue: CGFloat(arc4random()%256)/255.0, alpha: 1)
        takeCareSalonView.backgroundColor = UIColor(red: CGFloat(arc4random()%256)/255.0, green: CGFloat(arc4random()%256)/255.0, blue: CGFloat(arc4random()%256)/255.0, alpha: 1)
        moreMoreView.backgroundColor = UIColor(red: CGFloat(arc4random()%256)/255.0, green: CGFloat(arc4random()%256)/255.0, blue: CGFloat(arc4random()%256)/255.0, alpha: 1)
    

        arrangeStackView.axis = .horizontal
        arrangeStackView.distribution = .fillEqually

        arrangeStackView.spacing = 0
        arrangeStackView.alignment = .fill

        arrangeStackView.translatesAutoresizingMaskIntoConstraints = false
        
        arrangeStackView.addArrangedSubview(followUpActionView)
        arrangeStackView.addArrangedSubview(developCurriculumView)
        arrangeStackView.addArrangedSubview(moreMoreView)
        arrangeStackView.addArrangedSubview(takeCareSalonView)

        
        arrangeStackView.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.height.equalTo(95)
            make.width.equalToSuperview()
        }
        
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
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

