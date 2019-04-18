//
//  ViewController.swift
//  PlayingCards
//
//  Created by apple on 4/17/19.
//  Copyright © 2019 shivaapple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var deck = PlayingCardDeck()
        for _ in 1...10 {
            if let card = deck.draw(){
                print("card \(card)")
            }
            
        }
    }
    
}

