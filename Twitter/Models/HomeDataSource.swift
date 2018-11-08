//
//  HomeDataSource.swift
//  Twitter
//
//  Created by Robin He on 11/6/18.
//  Copyright © 2018 Robin He. All rights reserved.
//

import LBTAComponents
class HomeDataSource : Datasource {
    
    let users : [User] = {
        let user0 = User(name:"RobinHe", userName:"@Robinhe0212", bioText:"I like reading",profileImage:"profile")
        let user1 = User(name:"Troydan", userName:"@TroydanGaming", bioText:"Angry for no reason. Youtuber or something. I play video game basketball. Email: troydan@gmail.com", profileImage: "troydan")
       let user2 = User(name: "Sneaker News", userName: "@SneakerNews", bioText: "The Authority in Sneaker News.", profileImage: "sneaker")
        
        return [user0,user1,user2]
        
    }()
    
  //  let words = ["word1","word2","word3","word4","word5","word6","word7","word4","word5","word6","word7"]
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return[HeaderCell.self]
    }
    override func numberOfItems(_ section: Int) -> Int {
        return users.count
    }
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [FooterCell.self]
    }
    
    
}
