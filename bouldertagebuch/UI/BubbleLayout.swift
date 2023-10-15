//
//  BubbleLayout.swift
//  bouldertagebuch
//
//  Created by Li-Wei Yap on 15.10.23.
//

import UIKit

class BubbleLayout: UIStackView {
    override func awakeFromNib() {
        super.awakeFromNib()
        addBackground(color: UIColor.sBubbleSemantic)
        layer.cornerRadius = UIHelper.sBubbleCornerRadius

        // https://stackoverflow.com/a/65659453/12367873
        directionalLayoutMargins = NSDirectionalEdgeInsets(
            top: UIHelper.sBubblePadding,
            leading: UIHelper.sBubblePadding,
            bottom: UIHelper.sBubblePadding,
            trailing: UIHelper.sBubblePadding)
        isLayoutMarginsRelativeArrangement = true
    }
}
