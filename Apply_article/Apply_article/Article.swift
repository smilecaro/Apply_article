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
        author = txt
    }
    
    func getPublication() -> String {
        return self.author
    }
    
    func setTitle(txt: String){
        author = txt
    }
    
    func getTitle() -> String {
        return self.author
    }
    
    func setContent(txt: String){
        author = txt
    }
    
    func getContent() -> String {
        return self.author
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
