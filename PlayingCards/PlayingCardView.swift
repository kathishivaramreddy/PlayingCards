//
//  PlayingCardView.swift
//  PlayingCards
//
//  Created by apple on 4/18/19.
//  Copyright © 2019 shivaapple. All rights reserved.
//

import UIKit

class PlayingCardView: UIView {

   
    override func draw(_ rect: CGRect) {
        
        let rounderRect = UIBezierPath(roundedRect: bounds, cornerRadius: 16.0)
        rounderRect.addClip()
        UIColor.white.setFill()
        rounderRect.fill()
    }


}
