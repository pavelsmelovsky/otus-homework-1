//
//  CollectionTimersBehavior.swift
//  HomeWork-1
//
//  Created by Pavel Smelovsky on 10.10.2019.
//  Copyright © 2019 Pavel Smelovsky. All rights reserved.
//

import UIKit

class CollectionTimersBehavior: LifecycleBehavior {
    private weak var dataProvider: TimerItemsDataProvider?
    private weak var collectionView: UICollectionView?

    init(
        dataProvider: TimerItemsDataProvider?,
        collectionView: UICollectionView?) {
        self.dataProvider = dataProvider
        self.collectionView = collectionView
    }

    func whenAppeared(_ animated: Bool) {
        collectionView?.indexPathsForVisibleItems.forEach({ indexPath in
            dataProvider?.item(at: indexPath.item).isActive = true
        })
    }

    func whenDisappeared(_ animated: Bool) {
        dataProvider?.stopAll()
    }
}
