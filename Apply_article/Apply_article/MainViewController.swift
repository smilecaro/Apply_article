//
//  ViewController.swift
//  Apply_article
//
//  Created by Caroline Rayezc on 26/04/2018.
//  Copyright © 2018 Caroline Rayezc. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var acticleList: [Article] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func createArticleList(){
        
        var art1 = Article()
        
        art1.setAuthor(txt: "Shakespeare")
        art1.setPublication(txt: "26 avril 2018")
        art1.setTitle(txt: "Roméo et Juliette")
        art1.setContent(txt: "O Roméo, Roméo, pourquoi es-tu Roméo ? Renonce à ton père et abjure ton nom ; ou, si lu l'aimes mieux, jure seulement d'être mon amant, et je cesse d'être une Capulet.")
    }
}

