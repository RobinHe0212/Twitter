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
        separatorLineView.isHidden = false
        addSubview(textLabel)
        textLabel.fillSuperview()
    }
    
}

class FooterCell : DatasourceCell{
    
    let textLabel : UILabel = {
        let label = UILabel()
        label.text = "Show me more"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
        
    }()
    override func setupViews() {
        
        
        super.setupViews()
        separatorLineView.isHidden = false
        addSubview(textLabel)
        textLabel.fillSuperview()
    }
    
}

