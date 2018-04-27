//
//  ViewController.swift
//  Apply_article
//
//  Created by Caroline Rayezc on 26/04/2018.
//  Copyright © 2018 Caroline Rayezc. All rights reserved.
//

import UIKit

class Journal {

    var articleList: [Article] = []

    init(){
        self.articleList = []
        createArticleList()
    }
    
    func createArticleList(){
        
        var art1 = Article()
        
        art1.setAuthor(txt: "Shakespeare")
        art1.setPublication(txt: "1597")
        art1.setTitle(txt: "Roméo et Juliette")
        art1.setContent(txt: "O Roméo! Roméo! Pourquoi es-tu Roméo ? Renie ton père et refuse ton nom, ou si tu ne veux pas, fais moi simplement voeu d'amour. Et je cesserai d'être une Capulet.")
        
        var art2 = Article()
        
        art2.setAuthor(txt: "Molière")
        art2.setPublication(txt: "24 mai 1671")
        art2.setTitle(txt: "Les Fourberies de Scapin")
        art2.setContent(txt: "Mais que diable allait-il faire dans cette galère ?!")
        
        self.articleList.append(art1)
        self.articleList.append(art2)
        
        print(articleList)
    }
    
}
