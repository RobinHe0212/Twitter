//
//  ViewController.swift
//  Twitter
//
//  Created by Robin He on 11/6/18.
//  Copyright © 2018 Robin He. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController , UICollectionViewDelegateFlowLayout{

    
    let cellIdentifier = "customIdentifier"
    let headerId = "headerIdentifier"
    let footerId = "footerIdentifier"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //collectionview is subclass of UIview , differentiate them ,collectionView is what u see
        collectionView.backgroundColor = UIColor.white
        collectionView.register(CellClass.self, forCellWithReuseIdentifier: cellIdentifier)
        collectionView.register(UICollectionViewCell.self, forSupplementaryViewOfKind:UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
        collectionView.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: footerId)
    }
    //number of cell
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let customCell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath)
        return customCell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader{
        
        let headerCell = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath)
            headerCell.backgroundColor = UIColor.blue
            return headerCell
        }else {
            let footerCell = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: footerId, for: indexPath)
            footerCell.backgroundColor = UIColor.green
            return footerCell
        }
        
    }

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
    
    
}

class CellClass : UICollectionViewCell{
    //called when a cell is dequeued
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    let wordLable : UILabel = {
        let word = UILabel()
        word.text = "TEST TEST TEST"
        word.translatesAutoresizingMaskIntoConstraints = false
        return word
        }()
    
    func setUpView(){
        backgroundColor = UIColor.yellow
        addSubview(wordLable)
        //use anchor to lay out
        wordLable.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        wordLable.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        wordLable.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        wordLable.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true

        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

