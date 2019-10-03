//
//  Emoji TableViewController.swift
//  Emoji Dictionary
//
//  Created by Mobile on 9/30/19.
//  Copyright © 2019 Mobile. All rights reserved.
//

import UIKit

class Emoji_TableViewController: UITableViewController {
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojis = createEmojis()
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = "\(emojis[indexPath.row].emoji) - \(emojis[indexPath.row].emojiCategory)"
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "ourSegue", sender: emoji)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiDefVC = segue.destination as! EmojiDefinitionViewController
        emojiDefVC.emoji = sender as! Emoji
    }
    
    func createEmojis() -> [Emoji]{
        
        let e1 = Emoji()
        let e2 = Emoji()
        
        e1.emoji = "🤬"
        e1.emojiCategory = "Faces"
        e1.emojiDescription = "My face when I see you"
        e1.emojiRealease = 2010
        
        e2.emoji = "🦇"
        e2.emojiCategory = "Animals"
        e2.emojiDescription = "Son of Ozzy"
        e2.emojiRealease = 2666
        
        return [e1, e2]
        
    }
}
