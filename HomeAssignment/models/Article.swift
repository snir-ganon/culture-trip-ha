//
//  Article.swift
//  HomeAssignment
//
//  Created by Snir Ganon on 05/10/2020.
//  Copyright © 2020 test. All rights reserved.
//

import Foundation

class Article: Codable {
    var metaData: MetaData
    var id, title: String
    var imageUrl: String
    var isSaved, isLiked: Bool
    var likesCount: Int
    var category: String
    var author: Author

    enum CodingKeys: String, CodingKey {
        case metaData, id, title
        case imageUrl
        case isSaved, isLiked, likesCount, category, author
    }

    init(metaData: MetaData, id: String, title: String, imageURL: String, isSaved: Bool, isLiked: Bool, likesCount: Int, category: String, author: Author) {
        self.metaData = metaData
        self.id = id
        self.title = title
        self.imageUrl = imageURL
        self.isSaved = isSaved
        self.isLiked = isLiked
        self.likesCount = likesCount
        self.category = category
        self.author = author
    }
}

