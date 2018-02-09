//
//  DateView.swift
//  LazyDemo
//
//  Created by huzc on 2017/6/2.
//  Copyright © 2017年 SYO. All rights reserved.
//

import UIKit

class DateView: UIView {
    
    let width = UIScreen.main.bounds.maxX
    let height = UIScreen.main.bounds.maxY

    var timeLabel: UILabel!
    var timeArray: [String] = ["13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "9", "10", "11", "12"]
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        
        let path = CGMutablePath()
        // 圆弧中点
        let r1 = (self.width - 100) / 2
        let r2 = (self.width - 160) / 2
        let center = CGPoint(x: self.width / 2, y: self.height / 2)
        
        // 坐标
        for i in 0...13 {
            let aa = 360 / 14 * CGFloat(i + 1)
            let originX = self.width / 2 + 175 * cos(aa * CGFloat.pi / 180)
            let originY = self.height / 2 - 175 * sin(aa * CGFloat.pi / 180)
            
            self.timeLabel = UILabel()
            self.timeLabel.frame = CGRect(x: originX - 12.5, y: originY - 10, width: 25, height: 20)
            self.timeLabel.backgroundColor = UIColor.lightGray
            self.timeLabel.text = self.timeArray[i]
            self.timeLabel.textColor = UIColor.white
            self.timeLabel.textAlignment = .center
            self.addSubview(self.timeLabel)
            
            // 绘制直线
            let originX2 = self.width / 2 + r1 * cos(aa * CGFloat.pi / 180)
            let originY2 = self.height / 2 - r1 * sin(aa * CGFloat.pi / 180)
            let originX3 = self.width / 2 + r2 * cos(aa * CGFloat.pi / 180)
            let originY3 = self.height / 2 - r2 * sin(aa * CGFloat.pi / 180)
            
            context?.beginPath()
            let path1 = CGMutablePath()
            path1.addLines(between: [CGPoint(x: originX2, y: originY2),
                                     CGPoint(x: originX3, y: originY3)])
            context?.addPath(path1)
            context?.setStrokeColor(UIColor.yellow.cgColor)
            context?.setLineWidth(2)
            context?.strokePath()
            
            // 绘制直线2
            let originX4 = self.width / 2 + (r1 + 15) * cos(aa * CGFloat.pi / 180)
            let originY4 = self.height / 2 - (r1 + 15) * sin(aa * CGFloat.pi / 180)
            let originX5 = self.width / 2 + (r1 + 5) * cos(aa * CGFloat.pi / 180)
            let originY5 = self.height / 2 - (r1 + 5) * sin(aa * CGFloat.pi / 180)
            
            context?.beginPath()
            let path7 = CGMutablePath()
            path7.addLines(between: [CGPoint(x: originX4, y: originY4),
                                     CGPoint(x: originX5, y: originY5)])
            context?.addPath(path7)
            context?.setStrokeColor(UIColor.yellow.cgColor)
            context?.setLineWidth(2)
            context?.strokePath()
        }
        
        // 外圆
        context?.beginPath()
        path.addArc(center: center, radius: r1, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        context?.addPath(path)
        context?.setStrokeColor(UIColor.purple.cgColor)
        context?.setLineWidth(3)
        context?.strokePath()
        
        // 内圆
        context?.beginPath()
        let path2 = CGMutablePath()
        path2.addArc(center: center, radius: r2, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        context?.addPath(path2)
        context?.setStrokeColor(UIColor.red.cgColor)
        context?.setLineWidth(3)
        context?.strokePath()
        
        // 画弧形
        context?.beginPath()
        context?.setStrokeColor(UIColor.green.cgColor)
        context?.setLineWidth(30)
        context?.addArc(center: center, radius: (r1 + r2) / 2, startAngle: CGFloat.pi * 2 / 14 * 13, endAngle: CGFloat.pi * 0, clockwise: false)
        context?.strokePath()
        
        context?.beginPath()
        context?.setStrokeColor(UIColor.lightGray.cgColor)
        context?.setLineWidth(30)
        context?.addArc(center: center, radius: (r1 + r2) / 2, startAngle: CGFloat.pi * 2 / 14 * 12, endAngle: CGFloat.pi * 2 / 14 * 13, clockwise: false)
        context?.strokePath()
        
    }
    

}
