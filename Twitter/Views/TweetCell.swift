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
    
    func setUpBottomButton(){
        
        
        
        let stackBottom : UIStackView = {
            
            let retView = UIView()
            let retweet = UIButton(type: .system)
            retweet.setImage(UIImage(named: "retweet")?.withRenderingMode(.alwaysOriginal), for: .normal)
            retweet.imageView?.contentMode = .scaleAspectFit
            
            let replyView = UIView()
            let reply = UIButton(type: .system)
            reply.setImage(UIImage(named: "reply")?.withRenderingMode(.alwaysOriginal), for: .normal)
            reply.imageView?.contentMode = .scaleAspectFit

            //send_message  like
            let likeView = UIView()
            let like = UIButton(type: .system)
            like.setImage(UIImage(named: "like")?.withRenderingMode(.alwaysOriginal), for: .normal)
            like.imageView?.contentMode = .scaleAspectFit

            let send_messageView = UIView()
            let send_message = UIButton(type: .system)
            send_message.setImage(UIImage(named: "send_message")?.withRenderingMode(.alwaysOriginal), for: .normal)
            send_message.imageView?.contentMode = .scaleAspectFit

            
            let buttonStackView = UIStackView(arrangedSubviews: [replyView,retView,send_messageView,likeView])

            addSubview(buttonStackView)
            buttonStackView.anchor(topAnchor, left: textView.leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 60, leftConstant: 0, bottomConstant: 4, rightConstant: 0, widthConstant: 0, heightConstant: 0)
            
            buttonStackView.axis = .horizontal
            buttonStackView.distribution = .fillEqually
            

            
            addSubview(retweet)

            retweet.anchor(retView.topAnchor, left: retView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
            
            addSubview(reply)
            
            reply.anchor(replyView.topAnchor, left: replyView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
            
            addSubview(send_message)
            send_message.anchor(send_messageView.topAnchor, left: send_messageView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
            
            addSubview(like)
            like.anchor(likeView.topAnchor, left: likeView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
            
            
            return buttonStackView
        }()
        
        
    }
    
   override func setupViews() {
        super.setupViews()
    
    separatorLineView.isHidden = false
    separatorLineView.backgroundColor = UIColor(white: 0, alpha: 0.1)
        backgroundColor = .white
    
    addSubview(profileImageView)
    addSubview(textView)
    
     setUpBottomButton()
    
    profileImageView.anchor(topAnchor, left: leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0 , rightConstant: 0, widthConstant: 50, heightConstant: 50)
    textView.anchor(topAnchor, left: profileImageView.rightAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    
    }
    let textView : UITextView = {
        let tv = UITextView()
        tv.text = "Some sample text"
        tv.backgroundColor = .clear
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
