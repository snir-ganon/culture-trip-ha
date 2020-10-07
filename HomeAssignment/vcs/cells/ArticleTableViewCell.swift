//
//  ArticleTableViewCell.swift
//  HomeAssignment
//
//  Created by Snir Ganon on 06/10/2020.
//  Copyright © 2020 test. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class ArticleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var writerLabel: UILabel!
    @IBOutlet weak var creationTimeLabel: UILabel!
    @IBOutlet weak var articleImage: UIImageView!
    @IBOutlet weak var authorAvatarImageView: UIImageView!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var likeButton: UIButton!
    
    func setArticle(article: Article?) {
        self.titleLabel.text = article?.title
        self.categoryLabel.text = article?.category
        self.writerLabel.text = article?.author.authorName
        if let likes = article?.likesCount {
            self.likesLabel.text = String(likes)
        }
        if let isSaved = article?.isSaved {
            self.saveButton.isSelected = isSaved
        }
        if let isliked = article?.isLiked {
            self.likeButton.isSelected = isliked
        }
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        if let dateStr = article?.metaData.creationTime {
            if let date = formatter.date(from: dateStr) {
                self.creationTimeLabel.text = date.toShortFormatString()
            }
        }
        
        if let imageUrl = article?.imageUrl {
            if let url = URL(string: imageUrl) {
                self.articleImage.af.setImage(withURL: url)
            }
        }
        
        self.authorAvatarImageView.layer.cornerRadius = 20
        if let imageUrl = article?.author.authorAvatar.imageUrl {
            if let url = URL(string: imageUrl) {
                self.authorAvatarImageView.af.setImage(withURL: url)
            }
        }
        
    }
    
    @IBAction func didClickSaved(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    @IBAction func didClickLike(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    
}
