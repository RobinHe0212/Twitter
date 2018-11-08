//
//  HomeNavBarSetUp.swift
//  Twitter
//
//  Created by Robin He on 11/7/18.
//  Copyright © 2018 Robin He. All rights reserved.
//

import UIKit
extension HomeDatasourceController{
    
    
     func setNavigateBar(){
        let titleImage = UIImageView(image: UIImage(named: "title"))
        titleImage.contentMode = .scaleAspectFit
        titleImage.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        navigationItem.titleView = titleImage
        
        
        setLeftNavButton()
        
        setRightNavButton()
        
        navigationController?.navigationBar.barTintColor = UIColor.white
        navigationController?.navigationBar.isTranslucent = false
        
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
    }
    
    private func setLeftNavButton(){
        
        
        let leftButton = UIButton(type: .system)
        let  leftImage = UIImage(named: "follow")
        leftButton.setImage(leftImage?.withRenderingMode(.alwaysOriginal), for: .normal)
        leftButton.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        leftButton.imageView?.contentMode = .scaleAspectFit
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftButton)
        
        
    }
    
    private func setRightNavButton(){
        
        let rightButton = UIButton(type: .system)
        let  rightImage = UIImage(named: "search")
        rightButton.setImage(rightImage?.withRenderingMode(.alwaysOriginal), for: .normal)
        rightButton.frame = CGRect(x: 0, y: 0, width: 5, height: 5)
        rightButton.imageView?.contentMode = .scaleAspectFit
        
        
                let right2 = UIButton(type: .system)
                let  right2Image = UIImage(named: "compose")
                right2.setImage(right2Image?.withRenderingMode(.alwaysOriginal), for: .normal)
                right2.frame = CGRect(x: 0, y: 0, width: 5, height: 5)
                right2.imageView?.contentMode = .scaleAspectFit
        
        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: rightButton),UIBarButtonItem(customView: right2)]
        
        
        
        
    }
    
    
}
