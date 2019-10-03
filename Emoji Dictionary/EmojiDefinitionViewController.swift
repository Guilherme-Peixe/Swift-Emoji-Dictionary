//
//  EmojiDefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Mobile on 10/1/19.
//  Copyright © 2019 Mobile. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {
    var emoji = Emoji()
    //
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var emojiDescription: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = emoji.emoji
        emojiDescription.text = emoji.emojiDescription
        categoryLabel.text = emoji.emojiCategory
        birthLabel.text = "Since: \(emoji.emojiRealease)"
        
        
    }
}
