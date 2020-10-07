//
//  ViewController.swift
//  HomeAssignment
//
//  Created by Snir Ganon on 05/10/2020.
//  Copyright © 2020 test. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class MainViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didClickArticle() {
        NetworkManager.shared.getArticles { (articles, error) in
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "ArticlesController") as! ArticlesController
            vc.articles = articles
            self.navigationController?.pushViewController(vc, animated: true)
            
            debugPrint(articles)
        }
    }
    
  
    
    
}

