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
        
        let userPick = User(name:"Pikacho", userName:"@PikachoCute", bioText:"Pikachu is a short, chubby rodent Pokémon. It is covered in yellow fur with two horizontal brown stripes on its back.", profileImage: "pick")
        
        let liu = User(name: "Bosco小可可", userName: "@BoscoLYX", bioText: "感恩 珍惜 善良 + 坚强= 超酷的L", profileImage: "bosco")
        return [user0,user1,user2,userPick,liu]
        
    }()
    
  //  let words = ["word1","word2","word3","word4","word5","word6","word7","word4","word5","word6","word7"]
    
    let tweets : [Tweet] = {
        let user1 = User(name:"Troydan", userName:"@TroydanGaming", bioText:"Angry for no reason. Youtuber or something. I play video game basketball. Email: troydan@gmail.com", profileImage: "troydan")
        let tweet1 = Tweet(user:user1 ,message:"Hope u guys enjoying this game!")
       
        let user2 = User(name:"Pikacho", userName:"@PikachoCute", bioText:"Pikachu is a short, chubby rodent Pokémon. It is covered in yellow fur with two horizontal brown stripes on its back.", profileImage: "pick")
        let tweet2 = Tweet(user:user2 ,message:"妈妈我又上电视了！！！")
        let liu = User(name: "Bosco小可可", userName: "@BoscoLYX", bioText: "感恩 珍惜 善良 + 坚强= 超酷的L", profileImage: "bosco")
        let tweet3 = Tweet(user:liu ,message:"莫名丧，一下雨天心情就怎么也好不起来的感觉太糟了.......")
        
        return [tweet1,tweet2,tweet3]
    }()
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self,TweetCell.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return[HeaderCell.self]
    }
    override func numberOfItems(_ section: Int) -> Int {
        if section != 0 {
            return tweets.count
            
        }
        return users.count
    }
    override func item(_ indexPath: IndexPath) -> Any? {
        if indexPath.section == 1{
            
            return tweets[indexPath.item]
        }
        
        return users[indexPath.item]
    }
    
    override func numberOfSections() -> Int {
        return 2
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [FooterCell.self]
    }
    
    
}
