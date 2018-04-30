//
//  PrintArticleViewController.swift
//  Apply_article
//
//  Created by Caroline Rayezc on 30/04/2018.
//  Copyright © 2018 Caroline Rayezc. All rights reserved.
//

import UIKit

class PrintArticleViewController: UIViewController {

    var journal = Journal.singleton
    var article: Article!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.lightGray
        
        navigationItem.title = article.getTitle()
        navigationItem.backBarButtonItem?.title = "back"
        
        self.afficheLabel.text = "Auteur : \(article.getAuthor()) \n\nDate de publication : \(article.getPublication()) \n\nContenu : \n\n\(article.getContent())"
        
        self.view.addSubview(afficheLabel)
        
//        labelConstraint()
        
    }
    convenience init(_ art: Article) {
        self.init()
        self.article = art
    }
    
    
    lazy var afficheLabel : UILabel = {
            
        let label = UILabel()
        
        //label.text = "Author : \(article.getAuthor)"
//        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.frame = CGRect(x: 30, y: 80, width: 250, height: 300)
        label.numberOfLines = 100
        label.textAlignment = NSTextAlignment.left
        label.textColor = UIColor.black
        
        return label
            
        }()
    
//    func labelConstraint() {
//
//        afficheLabel.widthAnchor.constraint(equalToConstant: 16)
//
//        afficheLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
//        afficheLabel.heightAnchor.constraint(equalToConstant: 42).isActive = true
//    }
}


