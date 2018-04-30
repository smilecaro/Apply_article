//
//  WriteArticleViewController.swift
//  Apply_article
//
//  Created by Caroline Rayezc on 27/04/2018.
//  Copyright © 2018 Caroline Rayezc. All rights reserved.
//

import UIKit

class WriteArticleViewController: UIViewController {
    
    var color =  UIColor.lightGray
    var article = Article()
    var journal = Journal.singleton
    
    let textAuthor = UITextField()
    let textPublication = UITextField()
    let textTitle = UITextField()
    let textContent = UITextField()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        self.view.backgroundColor = color
        
        self.view.addSubview(buttonSave)
        
        recup()
        affich()
        

    }
    
    func affich() {
        
        let labelAuthor = UILabel()
        let labelPublication = UILabel()
        let labelTitle = UILabel()
        let labelContent = UILabel()
        
        labelAuthor.text = "Auteur : "
        labelAuthor.font = UIFont.boldSystemFont(ofSize: 14)
        labelAuthor.frame = CGRect(x: 30, y: 80, width: 270, height: 20)
        labelAuthor.textAlignment = NSTextAlignment.left
        labelAuthor.textColor = UIColor.black
        self.view.addSubview(labelAuthor)
        
        labelPublication.text = "Date de publication : "
        labelPublication.font = UIFont.boldSystemFont(ofSize: 14)
        labelPublication.frame = CGRect(x: 30, y: 160, width: 270, height: 20)
        labelPublication.textAlignment = NSTextAlignment.left
        labelPublication.textColor = UIColor.black
        self.view.addSubview(labelPublication)
        
        labelTitle.text = "Titre : "
        labelTitle.font = UIFont.boldSystemFont(ofSize: 14)
        labelTitle.frame = CGRect(x: 30, y: 240, width: 270, height: 20)
        labelTitle.textAlignment = NSTextAlignment.left
        labelTitle.textColor = UIColor.black
        self.view.addSubview(labelTitle)
        
        labelContent.text = "Contenu : "
        labelContent.font = UIFont.boldSystemFont(ofSize: 14)
        labelContent.frame = CGRect(x: 30, y: 320, width: 270, height: 20)
        labelContent.textAlignment = NSTextAlignment.left
        labelContent.textColor = UIColor.black
        self.view.addSubview(labelContent)
    }
    
    func recup() {
        
        textAuthor.borderStyle = .roundedRect
        textAuthor.frame = CGRect(x: 30, y: 105, width: 270, height: 40)
        self.view.addSubview(textAuthor)
        
        textPublication.borderStyle = .roundedRect
        textPublication.frame = CGRect(x: 30, y: 185, width: 270, height: 40)
        self.view.addSubview(textPublication)
        
        textTitle.borderStyle = .roundedRect
        textTitle.frame = CGRect(x: 30, y: 265, width: 270, height: 40)
        self.view.addSubview(textTitle)
        
        textContent.borderStyle = .roundedRect
        textContent.frame = CGRect(x: 30, y: 345, width: 270, height: 40)
        self.view.addSubview(textContent)
    }
    
    lazy var buttonSave: UIButton = {
        
        var buttonSave = UIButton()
        
        buttonSave.backgroundColor = UIColor.white
        buttonSave.setTitle("Save", for: UIControlState.normal)
        buttonSave.setTitleColor(.black, for: .normal)
        buttonSave.frame = CGRect(x: 40, y: 395, width: 250, height: 40)
        buttonSave.addTarget(self, action: #selector(click), for: .touchUpInside)
        
        return buttonSave
    }()
    
    @objc func click(_ sender:UIButton!) {
        
        article.setAuthor(txt: self.textAuthor.text!)
        article.setPublication(txt: self.textPublication.text!)
        article.setTitle(txt: self.textTitle.text!)
        article.setContent(txt: self.textContent.text!)
        Journal.singleton.articleList.append(article)
        print("click!")
    }

}

