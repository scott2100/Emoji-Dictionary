//
//  EmojiDefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by scott young on 11/14/17.
//  Copyright © 2017 scott young. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    var emoji = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji
        
        let emojiString = emoji
        let result = emojiString.applyingTransform(.toUnicodeName, reverse: false)
        emojiDefinitionLabel.text = result
    }
}
