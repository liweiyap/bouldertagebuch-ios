//
//  ViewController.swift
//  bouldertagebuch
//
//  Created by Li-Wei Yap on 09.07.23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mMainTitle: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.sBackgroundSemantic
        mMainTitle.setChalkdusterScalability(textStyle: .headline, fontSize: UIHelper.sTitleFontSize)
    }


}

