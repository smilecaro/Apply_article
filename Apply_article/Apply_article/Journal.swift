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
        
        var art3 = Article()
        
        art3.setAuthor(txt: "Racine")
        art3.setPublication(txt: "17 novembre 1667")
        art3.setTitle(txt: "Andromaque")
        art3.setContent(txt: "je crains votre silence, et non pas vos injures.")
        
        var art4 = Article()
        
        art4.setAuthor(txt: "Beaumarchais")
        art4.setPublication(txt: "1785")
        art4.setTitle(txt: "Le Mariage de Figaro")
        art4.setContent(txt: "Toute vérité n'est pas bonne à croire.")
        
        self.articleList.append(art1)
        self.articleList.append(art2)
        self.articleList.append(art3)
        self.articleList.append(art4)
        
        print(articleList)
    }
    
//    journal.articleList.append(Article(author: "Baudelaire", publication: "1869", title: "L'invitation au Voyage", content: "Mon enfant, ma sœur \n Songe à la douceur \n D’aller là-bas vivre ensemble ! \n Aimer à loisir, \n Aimer et mourir \n Au pays qui te ressemble !\n Les soleils mouillés\n De ces ciels brouillés\n Pour mon esprit ont les charmes\n Si mystérieux\n De tes traîtres yeux,\n Brillant à travers leurs larmes.\n \n Là, tout n’est qu’ordre et beauté,\n Luxe, calme et volupté. \n\n Des meubles luisants,\n Polis par les ans,\n Décoreraient notre chambre ;\n Les plus rares fleurs\n Mêlant leurs odeurs\n Aux vagues senteurs de l’ambre,\n Les riches plafonds,\n Les miroirs profonds,\n La splendeur orientale,\n Tout y parlerait\n À l’âme en secret\n Sa douce langue natale. \n \n Là, tout n’est qu’ordre et beauté,\n Luxe, calme et volupté. \n \n Vois sur ces canaux\n Dormir ces vaisseaux\n Dont l’humeur est vagabonde ;\n C’est pour assouvir\n Ton moindre désir\n Qu’ils viennent du bout du monde.\n – Les soleils couchants\nRevêtent les champs,\nLes canaux, la ville entière,\nD’hyacinthe et d’or ;\n Le monde s’endort\n Dans une chaude lumière. \n \n Là, tout n’est qu’ordre et beauté,\n Luxe, calme et volupté."))
//    
}
