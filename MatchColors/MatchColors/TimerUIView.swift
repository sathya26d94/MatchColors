//
//  TimerUIView.swift
//  MatchColors
//
//  Created by SaTHYa on 23/03/17.
//  Copyright © 2017 SaTHYa. All rights reserved.
//

import UIKit

let NoOfGlasses = 30
let π:CGFloat = CGFloat(Double.pi)

@IBDesignable
class TimerUIView: UIView {
    
    @IBInspectable var counter: Int = 5
    @IBInspectable var outlineColor: UIColor = UIColor.white
    @IBInspectable var counterColor: UIColor = UIColor.black
    
    override func draw(_ rect: CGRect) {
        let center = CGPoint(x:bounds.width/2, y: bounds.height/2)
        let radius: CGFloat = max(bounds.width, bounds.height)
        let arcWidth: CGFloat = 4
        let startAngle: CGFloat = 0
        let endAngle: CGFloat = 2*π
        let path = UIBezierPath(arcCenter: center,
            radius: radius/2 - arcWidth/2,
            startAngle: startAngle,
            endAngle: endAngle,
            clockwise: true)
        path.lineWidth = arcWidth
        counterColor.setStroke()
        path.stroke()
        let arcLengthPerGlass = 2 * π / CGFloat(NoOfGlasses)
        let outlineEndAngle = arcLengthPerGlass * CGFloat(counter) + startAngle
        let outlinePath = UIBezierPath(arcCenter: center,
            radius: bounds.width/2 - 2.5,
            startAngle: 0,
            endAngle: outlineEndAngle,
            clockwise: true)
        outlineColor.setStroke()
        outlinePath.lineWidth = 5.0
        outlinePath.stroke()
    }
}
