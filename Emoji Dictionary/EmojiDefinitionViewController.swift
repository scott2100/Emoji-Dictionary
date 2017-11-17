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
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji.theEmoji
        birthLabel.text = String(emoji.releaseDate)
        categoryLabel.text = emoji.category
        
        
        let emojiString = emoji.theEmoji
        let result = emojiString.applyingTransform(.toUnicodeName, reverse: false)
        emojiDefinitionLabel.text = result
        
    }
}
