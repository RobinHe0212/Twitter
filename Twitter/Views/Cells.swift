//
//  Cells.swift
//  Twitter
//
//  Created by Robin He on 11/6/18.
//  Copyright © 2018 Robin He. All rights reserved.
//

import LBTAComponents


class HeaderCell : DatasourceCell{
    
    let textLabel : UILabel = {
        let label = UILabel()
        label.text = "WHO TO FOLLOW"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
        
    }()
    override func setupViews() {
        super.setupViews()
        backgroundColor = .white
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(white: 0, alpha: 0.1)

        addSubview(textLabel)
        textLabel.fillSuperview()
    }
    
}

class FooterCell : DatasourceCell{
    
    let textLabel : UILabel = {
        let label = UILabel()
        label.text = "Show me more"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = UIColor(r: 61, g: 167, b: 244)
        return label
        
    }()
    override func setupViews() {
        
        
        super.setupViews()
        let whiteBackgroundView = UIView()
        whiteBackgroundView.backgroundColor = .white
        addSubview(whiteBackgroundView)
        whiteBackgroundView.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 14, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(white: 0, alpha: 0.1)

        addSubview(textLabel)
        textLabel.fillSuperview()
    }
    
}

