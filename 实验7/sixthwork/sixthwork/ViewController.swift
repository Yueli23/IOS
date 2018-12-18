//
//  ViewController.swift
//  sixthwork
//
//  Created by 南希 on 2018/11/25.
//  Copyright © 2018年 NanXi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func touchCard(_ sender: UIButton) {
        if let cardNumber = cardButtons.index(of: sender) {
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        } else {
            print("choose card was not in cardButtons")
        }
    }
    lazy var game = Concentration(numberOfPairsOfCards: (cardButtons.count + 1) / 2)

    @IBOutlet var cardButtons: [UIButton]!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func updateViewFromModel() {
        for index in cardButtons.indices {
            let button = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceUp {
                button.setTitle(emoji(for: card), for: UIControl.State.normal)
                button.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            } else {
                button.setTitle("", for: UIControl.State.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0) :UIColor.orange
            }
        }
        scoreLabel.text = "Score: \(game.score)"
    }
    
    var themes = [0:["🎃","👻","🐶","🐱","🐭","🐹","🦊","🐼","🐵","🐮","🐸"],
                  1:["🍏","🍎","🍐","🍊","🍋","🍌","🍉","🍇","🍑","🍒","🍓"],
                  2:["⚽️","🏀","🏈","⚾️","🎱","🏉","🏐","🎾","🏓","🏸","🏒"],
                  3:["🚗","🚕","🚙","🚌","🚑","🚓","🏎","🚎","🚒","🚚","🛵"],
                  4:["⌚️","📱","💻","🖨","🖥","⌨️","💽","🗜","🕹","💾","☎️"],
                  5:["🇦🇱","🇩🇿","🇦🇫","🏳️‍🌈","🇦🇷","🇦🇪","🇦🇼","🇴🇲","🇮🇪","🇪🇹","🇪🇬"]]
    lazy var emojiChoices = themes[0]!
    
    var emoji = [Int: String]()
    func emoji(for card: Card) -> String {
        if emoji[card.identifier] == nil, emojiChoices.count > 0 {
            let randomIndex = Int(arc4random_uniform(UInt32(emojiChoices.count)))
            emoji[card.identifier] = emojiChoices.remove(at: randomIndex)
        }
        return emoji[card.identifier] ?? "?"
    }
    @IBAction func newGame(_ sender: Any) {
        game = Concentration(numberOfPairsOfCards: (cardButtons.count + 1) / 2)
        let them = Int(arc4random_uniform(UInt32(themes.keys.count)))
        emojiChoices = themes[them]!
        updateViewFromModel()
    }
    
}

