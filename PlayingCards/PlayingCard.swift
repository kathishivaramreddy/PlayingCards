//
//  PlayingCard.swift
//  PlayingCards
//
//  Created by apple on 4/17/19.
//  Copyright © 2019 shivaapple. All rights reserved.
//

import Foundation

struct PlayingCard: CustomStringConvertible
{
    var description: String { return "\(rank.description) \(suit.description)"}
    
    var suit: Suit
    var rank: Rank
    
    enum Suit: String {
        case spades = "♠"
        case clubs = "♣"
        case diamonds = "♦"
        case hearts = "❤"
        
        static var all = [Suit.spades,.clubs,.diamonds,.hearts]
        
        var description: String { return rawValue}
        
    }
    
    enum Rank {
        case ace
        case face(String)
        case numeric(Int)
        
        var order: Int? {
            switch self {
            case .ace: return 1
            case .numeric(let pips): return pips
            case .face(let kind) where kind == "J": return 11
            case .face(let kind) where kind == "Q": return 12
            case .face(let kind) where kind == "K": return 13
            default: return nil
            }
        }
        
        static var all: [Rank] {
            var allRanks: [Rank] = [.ace]
            for pips in 2...10 {
                allRanks.append(Rank.numeric(pips))
            }
            allRanks += [Rank.face("J"),.face("Q"),.face("K")]
            return allRanks
        }
        
        var description:String {
            switch self {
            case .ace : return "A"
            case .numeric(let pips): return String(pips)
            case .face(let kind): return kind
            }
        }
    }
    
}
