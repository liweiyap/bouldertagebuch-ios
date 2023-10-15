//
//  UIStackView+Extensions.swift
//  bouldertagebuch
//
//  Created by Li-Wei Yap on 15.10.23.
//

import UIKit

extension UIStackView {
    // https://stackoverflow.com/a/34868367/12367873
    func addBackground(color: UIColor) {
        if #available(iOS 14.0, *) {
            backgroundColor = color
            return
        }

        let subView = UIView(frame: bounds)
        subView.backgroundColor = color
        subView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        insertSubview(subView, at: 0)
    }
}
