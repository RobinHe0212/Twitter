//
//  TweetCell.swift
//  Twitter
//
//  Created by Robin He on 11/7/18.
//  Copyright © 2018 Robin He. All rights reserved.
//

import LBTAComponents
class TweetCell : DatasourceCell{
    
    override var datasourceItem: Any?{
        didSet{
            guard let tweet = datasourceItem as? Tweet else{
                fatalError("cannot find datasource Item")
                return
            }
            let attributedText = NSMutableAttributedString(string: tweet.user.name, attributes: [NSMutableAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 16)])
            
            let msg = " \(tweet.user.userName)\n"
            attributedText.append(NSMutableAttributedString(string: msg, attributes: [NSMutableAttributedString.Key.font : UIFont.systemFont(ofSize: 15),NSMutableAttributedString.Key.foregroundColor : UIColor.gray]))
            attributedText.append(NSMutableAttributedString(string: tweet.message, attributes: [NSMutableAttributedString.Key.font : UIFont.systemFont(ofSize: 15)]))
            
            
            let paraLine = NSMutableParagraphStyle()
            paraLine.lineSpacing = 5
       //     let range = NSMakeRange(0, attributedText.string.count)
      //      attributedText.addAttribute(NSMutableParagraphStyle.self, value: paraLine, range: range)
            
            textView.attributedText = attributedText
            profileImageView.image = UIImage(named: tweet.user.profileImage)
            
        }
        
    }
    
   override func setupViews() {
        super.setupViews()
    
    separatorLineView.isHidden = false
    separatorLineView.backgroundColor = UIColor(white: 0, alpha: 0.1)
        backgroundColor = .white
    
    addSubview(profileImageView)
    addSubview(textView)
    
    profileImageView.anchor(topAnchor, left: leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0 , rightConstant: 0, widthConstant: 50, heightConstant: 50)
    textView.anchor(topAnchor, left: profileImageView.rightAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    
    }
    let textView : UITextView = {
        let tv = UITextView()
        tv.text = "Some sample text"
        tv.backgroundColor = UIColor.white
        return tv
        
    }()
    
    let profileImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "profile.jpeg")
        imageView.layer.cornerRadius = 5
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    
    
    
}
