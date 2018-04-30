//
//  Article.swift
//  Apply_article
//
//  Created by Caroline Rayezc on 26/04/2018.
//  Copyright © 2018 Caroline Rayezc. All rights reserved.
//

import Foundation

class Article {
    
    var author: String
    var publication: String
    var title: String
    var content: String
    
    //Modificateur
    func setAuthor(txt: String){
        author = txt
    }
    //Accesseur
    func getAuthor() -> String {
        return self.author
    }
    
    func setPublication(txt: String){
        publication = txt
    }
    
    func getPublication() -> String {
        return self.publication
    }
    
    func setTitle(txt: String){
        title = txt
    }
    
    func getTitle() -> String {
        return self.title
    }
    
    func setContent(txt: String){
        content = txt
    }
    
    func getContent() -> String {
        return self.content
    }
    
    //Constructeurs
    init(){
        self.author = "author"
        self.publication = "publication"
        self.title = "title"
        self.content = "content"
    }
    
    init(author: String, publication: String, title: String, content: String){
        self.author = author
        self.publication = publication
        self.title = title
        self.content = content
    }
    

}
