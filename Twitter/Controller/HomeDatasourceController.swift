//
//  HomeDatasourceController.swift
//  Twitter
//
//  Created by Robin He on 11/6/18.
//  Copyright © 2018 Robin He. All rights reserved.
//

import LBTAComponents


class HomeDatasourceController : DatasourceController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = UIColor(r: 232, g: 236, b: 241)
        setNavigateBar()
        let homeDatasource = HomeDataSource()
        self.datasource = homeDatasource
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if  let user = self.datasource?.item(indexPath) as? User {
            //get an estimation of the height of the cell based on user.bioText
            
            let approximateWidthOfBioTextView = view.frame.width-12-50-12-2
            let size = CGSize(width: approximateWidthOfBioTextView, height: 1000)
            let attributes = [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 15)]
            
            let estimatedframe = NSString(string: user.bioText).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
            
            return CGSize(width: view.frame.width, height: estimatedframe.height+66)
        }else
             if  let tweet = self.datasource?.item(indexPath) as? Tweet {
            //get an estimation of the height of the cell based on user.bioText
            
            let approximateWidthOfBioTextView = view.frame.width-12-50-12-2
            let size = CGSize(width: approximateWidthOfBioTextView, height: 1000)
            let attributes = [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 15)]
            
            let estimatedframe = NSString(string: tweet.message).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
            
            return CGSize(width: view.frame.width, height: estimatedframe.height+66)
        }
        
        
       
        
        return CGSize(width: view.frame.width, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        if section != 0 {
            
            return .zero
        }
        return CGSize(width: view.frame.width, height: 50)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        if section != 0 {
            return .zero
        }
        
        return CGSize(width: view.frame.width, height: 100)

    }
}
