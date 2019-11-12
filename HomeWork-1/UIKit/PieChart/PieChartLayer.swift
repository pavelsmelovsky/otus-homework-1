//
//  PieChartLayer.swift
//  HomeWork-1
//
//  Created by Pavel Smelovsky on 16.10.2019.
//  Copyright © 2019 Pavel Smelovsky. All rights reserved.
//

import UIKit
import QuartzCore

final class PieChartLayer: CALayer {
    var chartContext: PieChartContext = .init()

    unowned var dataSource: PieChartLayertDataSource

    init(dataSource: PieChartLayertDataSource) {
        self.dataSource = dataSource

        super.init()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func draw(in ctx: CGContext) {
        ctx.saveGState()

        let center = CGPoint(x: bounds.midX, y: bounds.midY)
        let radius = min(bounds.width, bounds.height)

        let totalCount = dataSource.numberOfItems(self)
        let items = (0..<totalCount).map { dataSource.layer(self, itemAt: $0) }

        let totalWeight = items.reduce(CGFloat(0), { $0 + CGFloat($1.weight) })

        ctx.beginPath()

        var startAngle = -(CGFloat.pi / 4)
        items.enumerated().forEach { offset, item in
            let endAngle = startAngle + (CGFloat(item.weight) / totalWeight) * CGFloat.pi * 2

            ctx.setFillColor(item.color?.cgColor ?? UIColor.black.cgColor)
            ctx.addArc(center: center, radius: radius,
                       startAngle: startAngle, endAngle: endAngle,
                       clockwise: true)

            if let text = item.text {
                let nsString = NSString(string: text)

                let midAngle = endAngle - startAngle
                let x = cos(midAngle) * radius * 0.66
                let y = sin(midAngle) * radius * 0.66
                nsString.draw(at: CGPoint(x: x, y: y),
                              withAttributes: nil)
            }

            startAngle = endAngle
        }

        ctx.closePath()

        ctx.restoreGState()
    }
}
