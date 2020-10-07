//
//  Author.swift
//  HomeAssignment
//
//  Created by Snir Ganon on 05/10/2020.
//  Copyright © 2020 test. All rights reserved.
//

import Foundation

class Author: Codable {
    var id, authorName: String
    var authorAvatar: AuthorAvatar

    init(id: String, authorName: String, authorAvatar: AuthorAvatar) {
        self.id = id
        self.authorName = authorName
        self.authorAvatar = authorAvatar
    }
}
