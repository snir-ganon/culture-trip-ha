//
//  ArticlesController.swift
//  HomeAssignment
//
//  Created by Snir Ganon on 05/10/2020.
//  Copyright © 2020 test. All rights reserved.
//

import UIKit

class ArticlesController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var articlesTableView: UITableView!
    var articles: [Article] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    //MARK: Delegate functions
    func numberOfSections(in tableView: UITableView) -> Int {
          return 1
      }
      
      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articles.count
      }
      
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = articlesTableView.dequeueReusableCell(withIdentifier: "articleCell", for: indexPath) as! ArticleTableViewCell
        
        let article = self.articles[indexPath.row]
        cell.setArticle(article: article)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let article = self.articles[indexPath.row]
        var padding = article.title.heightWithConstrainedWidth(width: self.view.frame.size.width - 16,font: UIFont.boldSystemFont(ofSize: 18))
        return CGFloat(padding + 380)
    }
    
}
