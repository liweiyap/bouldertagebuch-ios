//
//  Localizable.swift
//  bouldertagebuch
//
//  Created by Li-Wei Yap on 23.07.23.
//

import Foundation

protocol Localizable {
    var localized: String { get }
}

extension String: Localizable {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}

protocol XIBLocalizable {
    var xibLocKey: String? { get set }
}
