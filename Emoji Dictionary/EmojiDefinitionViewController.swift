//
//  EmojiDefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Mobile on 10/1/19.
//  Copyright © 2019 Mobile. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {
    var emoji = ""
    
    @IBOutlet weak var emojiDescription: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = emoji
        
        if(emoji == "🥶"){
            emojiDescription.text = "I'm cold bitch!"
        } else if (emoji == "🤬"){
            emojiDescription.text = "I hate you"
        } else if (emoji == "🦇"){
            emojiDescription.text = "Son of Batman"
        } else {
            emojiDescription.text = "Six days until my death"
        }
    }
}
