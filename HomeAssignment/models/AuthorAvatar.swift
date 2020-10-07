//
//  AuthorAvatar.swift
//  HomeAssignment
//
//  Created by Snir Ganon on 05/10/2020.
//  Copyright © 2020 test. All rights reserved.
//

import Foundation

class AuthorAvatar: Codable {
    var imageUrl: String

    enum CodingKeys: String, CodingKey {
        case imageUrl
    }

    init(imageURL: String) {
        self.imageUrl = imageURL
    }
}
