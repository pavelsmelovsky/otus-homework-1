//
//  PieChart.swift
//  HomeWork-1
//
//  Created by Pavel Smelovsky on 16.10.2019.
//  Copyright © 2019 Pavel Smelovsky. All rights reserved.
//

import UIKit

class PieChart: UIView {
    var items: [PieItem]? {
        didSet {
            setNeedsLayout()
            setNeedsDisplay()
        }
    }

    private var pieChartLayer: PieChartLayer?

    override init(frame: CGRect) {
        super.init(frame: frame)

        pieChartLayer = makePieChartLayer()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)

        pieChartLayer = makePieChartLayer()
    }
}

private extension PieChart {
    func makePieChartLayer() -> PieChartLayer {
        let layer = PieChartLayer(dataSource: self)
        layer.frame = self.layer.bounds
        self.layer.addSublayer(layer)
        return layer
    }
}

extension PieChart: PieChartLayertDataSource {
    func numberOfItems(_ layer: PieChartLayer) -> Int {
        items?.count ?? 0
    }

    func layer(_ layer: PieChartLayer, itemAt index: Int) -> PieItem {
        guard let items = items else { fatalError() }

        return items[index]
    }
}
