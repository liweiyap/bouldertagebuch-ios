//
//  UILabel+Extensions.swift
//  bouldertagebuch
//
//  Created by Li-Wei Yap on 23.07.23.
//

import UIKit

extension UILabel: XIBLocalizable {
    @IBInspectable var mXibLocKey: String? {
        get { return nil }
        set(key) {
            text = key?.mLocalized
        }
    }
}
