//
//  Article.swift
//  Apply_article
//
//  Created by Caroline Rayezc on 26/04/2018.
//  Copyright © 2018 Caroline Rayezc. All rights reserved.
//

import Foundation

class Article {
    
    var author: String = ""
    var publication: String = ""
    var title: String = ""
    var content: String = ""
    
    func setAuthor(txt: String){
        author = txt
    }
    
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
    
//    print("Auteur de l'article : " + article.auteur)
//
//    print("Date de pubication : " + article.publication)
//
//    print("Titre de l'article : " + article.titre)
//
//    print("Contenu : " + article.contenu)
//
//
}
