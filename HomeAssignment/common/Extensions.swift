//
//  Extensions.swift
//  HomeAssignment
//
//  Created by Snir Ganon on 07/10/2020.
//  Copyright © 2020 test. All rights reserved.
//

import UIKit

extension Date{
    func toShortFormatString() -> String {
           let formatter = DateFormatter()
           formatter.dateFormat = "dd MMM, y"
           let myString = formatter.string(from: self)
           return myString
       }
}

extension String {
    func heightWithConstrainedWidth(width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: [.usesLineFragmentOrigin, .usesFontLeading], attributes: [NSAttributedString.Key.font: font], context: nil)
        return boundingBox.height
    }
}

