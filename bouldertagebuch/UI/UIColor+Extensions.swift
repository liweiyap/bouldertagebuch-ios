//
//  UIColor+Extensions.swift
//  bouldertagebuch
//
//  Created by Li-Wei Yap on 16.07.23.
//

import UIKit

extension UIColor {
    // 600 on Material Color Swatch
    private static let sBackgroundLight = UIColor(red: 252.0/255.0, green: 220.0/255.0, blue: 0.0, alpha: 1.0)
    private static let sBackgroundDark = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
    static let sBackgroundSemantic = UIColor { (UITraitCollection: UITraitCollection) -> UIColor in
        return (UITraitCollection.userInterfaceStyle == .dark) ? sBackgroundDark : sBackgroundLight
    }

    // 200 on Material Color Swatch
    private static let sBubbleLight = UIColor(red: 253.0/255.0, green: 246.0/255.0, blue: 149.0/255.0, alpha: 1.0)
    private static let sBubbleDark = UIColor(red: 23.0/255.0, green: 23.0/255.0, blue: 23.0/255.0, alpha: 1.0)
    static let sBubbleSemantic = UIColor { (UITraitCollection: UITraitCollection) -> UIColor in
        return (UITraitCollection.userInterfaceStyle == .dark) ? sBubbleDark : sBubbleLight
    }
}
