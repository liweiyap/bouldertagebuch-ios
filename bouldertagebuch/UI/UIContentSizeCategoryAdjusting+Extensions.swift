//
//  UIContentSizeCategoryAdjusting+Extensions.swift
//  bouldertagebuch
//
//  Created by Li-Wei Yap on 13.08.23.
//

import UIKit

/**
 In Interface Builder, the Dynamic Type option to automatically adjust fonts applies
 only to text styles or scaled fonts returned by UIFontMetrics.
 It has no effect on custom fonts set in Interface Builder.
 */
extension UIContentSizeCategoryAdjusting {
    func setChalkdusterScalability(textStyle: UIFont.TextStyle, fontSize: CGFloat) {
        setCustomFontScalability(textStyle: textStyle, fontName: "Chalkduster", fontSize: fontSize)
    }

    // https://stackoverflow.com/a/61921242/12367873
    func setCustomFontScalability(textStyle: UIFont.TextStyle, fontName: String, fontSize: CGFloat) {
        switch self {
        case let self as UILabel:
            self.font = createScalableCustomFont(textStyle, fontName, fontSize)
        case let self as UITextView:
            self.font = createScalableCustomFont(textStyle, fontName, fontSize)
        case let self as UITextField:
            self.font = createScalableCustomFont(textStyle, fontName, fontSize)
        default:
            break
        }

        adjustsFontForContentSizeCategory = true
    }

    private func createScalableCustomFont(_ textStyle: UIFont.TextStyle, _ fontName: String, _ fontSize: CGFloat) -> UIFont! {
        return UIFontMetrics(forTextStyle: textStyle)
            .scaledFont(for: UIHelper.createCustomFont(fontName: fontName, fontSize: fontSize))
    }
}
