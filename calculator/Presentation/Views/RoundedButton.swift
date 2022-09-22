//
//  RoundedButton.swift
//  calculator
//
//  Created by Pavel Sharkov on 22.09.2022.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet { setNeedsLayout() }
    }

    @IBInspectable var borderWidth: Double = 0.0 {
        didSet { layer.borderWidth = CGFloat(borderWidth) }
    }

    @IBInspectable var color: UIColor = .white {
        didSet { backgroundColor = color }
    }

    @IBInspectable var borderColor: UIColor? {
        didSet { layer.borderColor = borderColor?.cgColor }
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
        if frame.height >= frame.width {
            layer.cornerRadius = frame.width / 2
        } else {
            layer.cornerRadius = frame.height / 2
        }
    }
}
