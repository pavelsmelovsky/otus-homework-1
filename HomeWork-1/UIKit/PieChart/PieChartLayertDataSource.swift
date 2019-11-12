//
//  PieChartLayertDataSource.swift
//  HomeWork-1
//
//  Created by Pavel Smelovsky on 22.10.2019.
//  Copyright © 2019 Pavel Smelovsky. All rights reserved.
//

import Foundation

protocol PieChartLayertDataSource: AnyObject {
    func numberOfItems(_ layer: PieChartLayer) -> Int
    func layer(_ layer: PieChartLayer, itemAt index: Int) -> PieItem
}
