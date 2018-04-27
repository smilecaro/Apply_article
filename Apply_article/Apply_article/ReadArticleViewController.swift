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
        //tableView.register(Header.self, forCellReuseIdentifier: "headerId")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return journal.articleList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = MyCell()
        let article = journal.articleList[indexPath.row]
        
        cell.nameLabel.text = article.getTitle()
        
        return cell
        
        
        //return tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//        self.journal = [indexPath.row]
//
//    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return tableView.dequeueReusableCell(withIdentifier: "headerId")
    }
    
}


class Header: UITableViewHeaderFooterView {
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let nameLabel: UILabel = {
        
        let label = UILabel()
        label.text = "My Header"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
        
    }()
    
    func setupViews() {
        
        addSubview(nameLabel)
//        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H|-16-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameLabel]))
//        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameLabel]))
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
        
//        nameLabel.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
//        nameLabel.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor).isActive = true
        nameLabel.widthAnchor.constraint(equalToConstant: 0)
        
        nameLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
//        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H|-16-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameLabel]))
//        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameLabel]))
    }
}
