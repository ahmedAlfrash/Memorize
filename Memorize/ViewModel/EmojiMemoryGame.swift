//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by ahmed alfrash on 6/28/20.
//

import SwiftUI


class EmojiMemoryGame {
    private var model: MemoryGame<String> = createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String>{
        let emojis = ["👻", "🏖", "🌋"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    //MARK:- Access to the Model
    var cards: Array<MemoryGame<String>.Card>{
        model.cards
    }
    
    
    //MARK:- Intent(s)
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
}
