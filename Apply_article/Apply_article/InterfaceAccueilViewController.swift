//
//  InterfaceAccueil.swift
//  Apply_article
//
//  Created by Caroline Rayezc on 27/04/2018.
//  Copyright © 2018 Caroline Rayezc. All rights reserved.
//

import UIKit

class InterfaceAccueilViewController: UIViewController {
    
    var color =  UIColor.lightGray
    
    
    

    override func viewDidLoad(){
        super.viewDidLoad()
        
        self.view.backgroundColor = color
        
        self.view.addSubview(readArticle)
        self.view.addSubview(writeArticle)
        
        readArticleContraint()
        writeArticleContraint()
    }
    
    //////////READ ARTICLE//////////
    
    lazy var readArticle: UIButton = {
        
        var readArticle = UIButton()
        
        readArticle.translatesAutoresizingMaskIntoConstraints = false
        
        readArticle.backgroundColor = UIColor.white
        readArticle.setTitle("READ ARTICLE", for: UIControlState.normal)
        readArticle.setTitleColor(.black, for: .normal)
        readArticle.addTarget(self, action: #selector(readArticleAction), for: .touchUpInside)
        
        return readArticle
    }()
    
    @objc func readArticleAction(_ sender:UIButton!) {
        
        self.navigationController?.pushViewController(ReadArticleViewController(), animated: true)
    }
    
    func readArticleContraint(){

        readArticle.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -30).isActive = true
        readArticle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true

        readArticle.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5).isActive = true
        readArticle.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.05).isActive = true
    }
    
    //////////WRITE ARTICLE//////////
    
    lazy var writeArticle: UIButton = {
        
        var writeArticle = UIButton()
        
        writeArticle.translatesAutoresizingMaskIntoConstraints = false
        
        writeArticle.backgroundColor = UIColor.white
        writeArticle.setTitle("WRITE ARTICLE", for: UIControlState.normal)
        writeArticle.setTitleColor(.black, for: .normal)
        writeArticle.addTarget(self, action: #selector(writeArticleAction), for: .touchUpInside)
        
        return writeArticle
    }()
    
    @objc func writeArticleAction(_ sender:UIButton!)
    {
        
        self.navigationController?.pushViewController(WriteArticleViewController(), animated: true)
    }
    
    func writeArticleContraint(){

        writeArticle.centerYAnchor.constraint(equalTo: self.readArticle.centerYAnchor, constant: 50).isActive = true
        writeArticle.centerXAnchor.constraint(equalTo: self.readArticle.centerXAnchor).isActive = true
        
        writeArticle.widthAnchor.constraint(equalTo: self.readArticle.widthAnchor).isActive = true
        writeArticle.heightAnchor.constraint(equalTo: self.readArticle.heightAnchor).isActive = true
    }
}
