//
//  UIHelper.swift
//  bouldertagebuch
//
//  Created by Li-Wei Yap on 13.08.23.
//

import UIKit

struct UIHelper {
    // MARK: - dimens (font size)

    static let sScreenTitleFontSize: CGFloat = 22
    static let sBubbleTitleFontSize: CGFloat = 17

    static func createCustomFont(fontName: String, fontSize: CGFloat) -> UIFont {
        guard let customFont = UIFont(name: fontName, size: fontSize) else {
            fatalError(
                """
                Failed to load custom font named \(fontName) with size \(fontSize).
                Make sure the font file is included in the project and the font name is spelled correctly.
                """
            )
        }

        return customFont
    }

    // MARK: - dimens (padding)

    static let sBubblePadding: CGFloat = 16

    // MARK: - dimens (corner radius)

    static let sBubbleCornerRadius: CGFloat = 16
}
