//
//  ViewController.swift
//  Apply_article
//
//  Created by Caroline Rayezc on 26/04/2018.
//  Copyright © 2018 Caroline Rayezc. All rights reserved.
//

import UIKit

class Main: UIViewController {

    var articleList: [Article] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createArticleList()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func createArticleList(){
        
        var art1 = Article()
        
        art1.setAuthor(txt: "Shakespeare")
        art1.setPublication(txt: "1597")
        art1.setTitle(txt: "Roméo et Juliette")
        art1.setContent(txt: "O Roméo! Roméo! Pourquoi es-tu Roméo ? Renie ton père et refuse ton nom, ou si tu ne veux pas, fais moi simplement voeu d'amour. Et je cesserai d'être une Capulet.")
        
        var art2 = Article()
        
        art2.author = "Molière"
        art2.publication = "24 mai 1671"
        art2.title = "Les Fourberies de Scapin"
        art2.content = "Mais que diable allait-il faire dans cette galère ? !"
        
        self.articleList.append(art1)
        self.articleList.append(art2)
        
        print(articleList)
    }
    
}

