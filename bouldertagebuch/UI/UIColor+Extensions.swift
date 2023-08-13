//
//  UIColor+Extensions.swift
//  bouldertagebuch
//
//  Created by Li-Wei Yap on 16.07.23.
//

import UIKit

extension UIColor {
    private static let sBackgroundLight = UIColor(red: 252.0/255.0, green: 220.0/255.0, blue: 0.0, alpha: 1.0)
    private static let sBackgroundDark = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)

    static let sBackgroundSemantic = UIColor { (UITraitCollection: UITraitCollection) -> UIColor in
        if UITraitCollection.userInterfaceStyle == .dark {
            return sBackgroundDark
        }
        return sBackgroundLight
    }
}
