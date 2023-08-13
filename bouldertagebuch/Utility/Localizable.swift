//
//  Localizable.swift
//  bouldertagebuch
//
//  Created by Li-Wei Yap on 23.07.23.
//

import Foundation

protocol Localizable {
    var mLocalized: String { get }
}

extension String: Localizable {
    var mLocalized: String {
        return NSLocalizedString(self, comment: "")
    }
}

protocol XIBLocalizable {
    var mXibLocKey: String? { get set }
}
