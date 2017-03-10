//
//  RadialGradientView.swift
//  RadialGradients
//
//  Created by Richard E Pitts on 3/10/17.
//  Copyright © 2017 Richard E Pitts. All rights reserved.
//

import UIKit

@IBDesignable
class RadialGradientView: UIView {

    @IBInspectable var insideColor: UIColor = UIColor.blue

    @IBInspectable var outsideColor: UIColor = UIColor.gray
    
    override func draw(_ rect: CGRect) {
        let colors = [insideColor.cgColor, outsideColor.cgColor] as CFArray
        let endRadius = min(frame.width, frame.height) / 2
        let gradient = CGGradient(colorsSpace: nil, colors: colors, locations: nil)
        let center = CGPoint(x: bounds.size.width / 2, y: bounds.size.height / 2)
        
        UIGraphicsGetCurrentContext()!.drawRadialGradient(gradient!, startCenter: center, startRadius: 0, endCenter: center, endRadius: endRadius, options: CGGradientDrawingOptions.drawsBeforeStartLocation)
    }
}
