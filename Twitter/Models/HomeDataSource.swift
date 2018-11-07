//
//  HomeDataSource.swift
//  Twitter
//
//  Created by Robin He on 11/6/18.
//  Copyright © 2018 Robin He. All rights reserved.
//

import LBTAComponents
class HomeDataSource : Datasource {
    let words = ["word1","word2","word3","word4","word5","word6","word7","word4","word5","word6","word7"]
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return[HeaderCell.self]
    }
    override func numberOfItems(_ section: Int) -> Int {
        return words.count
    }
    override func item(_ indexPath: IndexPath) -> Any? {
        return words[indexPath.item]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [FooterCell.self]
    }
    
    
}
