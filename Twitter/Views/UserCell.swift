//
//  UserCell.swift
//  Twitter
//
//  Created by Robin He on 11/7/18.
//  Copyright © 2018 Robin He. All rights reserved.
//

import LBTAComponents

class UserCell:DatasourceCell{
    
    override var datasourceItem: Any?{
        didSet{
            guard let item = datasourceItem as? User else{
                fatalError("cannot downcast item")
                return
            }
            nameLabel.text = item.name
            userName.text = item.userName
            bioText.text = item.bioText
            profileImageView.image = UIImage(named: item.profileImage)
        }
        
    }
    let profileImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "profile.jpeg")
        imageView.layer.cornerRadius = 5
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let nameLabel : UILabel = {
        let label = UILabel()
        label.text = "Robin He"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    let userName : UILabel = {
        let name = UILabel()
        name.text = "@RobinHe0212"
        name.font = UIFont.boldSystemFont(ofSize: 14)
        return name
    }()
    
    let bioText : UITextView = {
        let text = UITextView()
        text.text = "iphone,ipad,Northeastern Student, pursing for a coop job as ios developer"
        text.font = UIFont.boldSystemFont(ofSize: 15)
        text.backgroundColor = .clear
        return text
    }()
    
    let subButton : UIButton = {
        let button = UIButton()
        let twitterBlue = UIColor(r: 61, g: 167, b: 244)
        button.layer.cornerRadius = 5
        button.layer.borderColor = twitterBlue.cgColor
        button.layer.borderWidth = 1
        button.setTitle("Follow", for: .normal)
        button.setTitleColor(twitterBlue, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: -25)
        return button
    }()
    
    let twitterButton : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "mario")
        image.layer.cornerRadius = 5
        image.layer.masksToBounds = true
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    
    override func setupViews() {
        super.setupViews()
        backgroundColor = UIColor.white
        
        separatorLineView.isHidden = false
        addSubview(profileImageView)
        addSubview(nameLabel)
        addSubview(userName)
        addSubview(bioText)
        addSubview(subButton)
        addSubview(twitterButton)
        
        profileImageView.anchor(topAnchor, left: leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0 , rightConstant: 0, widthConstant: 50, heightConstant: 50)
        
        nameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: rightAnchor, topConstant: 0, leftConstant: 4, bottomConstant: 0, rightConstant: 100, widthConstant: 0, heightConstant: 20)
        
        userName.anchor(nameLabel.bottomAnchor, left: nameLabel.leftAnchor, bottom: nil, right: nameLabel.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        
        bioText.anchor(userName.bottomAnchor, left: userName.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: -4, leftConstant: 0, bottomConstant: 0, rightConstant: 4, widthConstant: 0, heightConstant: 0)
        
        subButton.anchor(nameLabel.topAnchor, left: nameLabel.rightAnchor, bottom: userName.bottomAnchor, right: bioText.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 4, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        twitterButton.anchor(subButton.topAnchor, left: subButton.leftAnchor, bottom: subButton.bottomAnchor, right: nil, topConstant: 2, leftConstant: 2, bottomConstant: 2, rightConstant: 0, widthConstant: 30, heightConstant: 0)
    }
}

