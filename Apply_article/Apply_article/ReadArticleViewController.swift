//
//  ReadArticleViewController.swift
//  Apply_article
//
//  Created by Caroline Rayezc on 27/04/2018.
//  Copyright © 2018 Caroline Rayezc. All rights reserved.
//

import UIKit

class ReadArticleViewController: UITableViewController {
    
    var journal = Journal()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Read my article"
        
        tableView.register(MyCell.self, forCellReuseIdentifier: "cellId")
        
        tableView.sectionHeaderHeight = 50
    
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return journal.articleList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = MyCell()
        let article = journal.articleList[indexPath.row]
        
        cell.nameLabel.text = article.getTitle()
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        let article = self.journal.articleList[indexPath.row]
        print(article.author)
        self.navigationController?.pushViewController(PrintArticleViewController(article), animated: true)
        
        
    }

    
}
class MyCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let nameLabel: UILabel = {
        
        let label = UILabel()
        label.text = "   " 
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 14)
        
        return label
        
    }()
    
    func setupViews() {
        
        addSubview(nameLabel)
        
        nameLabel.widthAnchor.constraint(equalToConstant: 0)
        
        nameLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 42).isActive = true
        
    }
}
