//
//  RoundedView.swift
//  GymKing
//
//  Created by Ivan Hjelmeland on 30/08/2017.
//  Copyright © 2017 Aboveapps. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedView: UIView {

    @IBInspectable var borderColor: UIColor = UIColor.white {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }

    @IBInspectable var cornerRadius: Float = 0.0 {
        didSet {
            layer.cornerRadius = CGFloat(cornerRadius)
            self.clipsToBounds = false
        }
    }

    @IBInspectable var shadowColor: UIColor = UIColor.black {
        didSet {
            layer.shadowColor = shadowColor.cgColor
            layer.shadowOpacity = 0.7
            layer.shadowRadius = 8.0
            layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        }
    }
    
}
