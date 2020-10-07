//
//  MetaData.swift
//  HomeAssignment
//
//  Created by Snir Ganon on 05/10/2020.
//  Copyright © 2020 test. All rights reserved.
//

import Foundation

class MetaData: Codable {
    var creationTime, updateTime: String

    init(creationTime: String, updateTime: String) {
        self.creationTime = creationTime
        self.updateTime = updateTime
    }
}
