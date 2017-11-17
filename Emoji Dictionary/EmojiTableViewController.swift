//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by scott young on 11/14/17.
//  Copyright © 2017 scott young. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojis = createEmojis()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)
        -> Int {
        return emojis.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
        -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        cell.textLabel?.text = emojis[indexPath.row].theEmoji
            
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
    
    func createEmojis() -> [Emoji] {
        
        let shades = Emoji()
        shades.theEmoji = "😎"
        shades.releaseDate = 2010
        shades.category = "Faces"
        emojis.append(shades)
        
        let smiley = Emoji()
        smiley.theEmoji = "😀"
        smiley.releaseDate = 2017
        smiley.category = "Faces"
        emojis.append(smiley)
        
        let church = Emoji()
        church.theEmoji = "⛪️"
        church.releaseDate = 2000
        church.category = "Buildings"
        emojis.append(church)
        
        let paintingBridge = Emoji()
        paintingBridge.theEmoji = "🌁"
        paintingBridge.releaseDate = 2012
        paintingBridge.category = "Paintings"
        emojis.append(paintingBridge)
        
        return [shades, smiley, church, paintingBridge]
    }

}
