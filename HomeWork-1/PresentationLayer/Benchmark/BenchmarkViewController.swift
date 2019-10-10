//
//  BenchmarkViewController.swift
//  HomeWork-1
//
//  Created by Pavel Smelovsky on 17/09/2019.
//  Copyright © 2019 Pavel Smelovsky. All rights reserved.
//

import UIKit

class BenchmarkViewController: UIViewController {

    @IBOutlet private weak var collectionView: UICollectionView?

    private var dataProvider: TimerItemsDataProvider?

    override func viewDidLoad() {
        super.viewDidLoad()

        add(behaviors: [TimerLifecycleBehavior()])

        dataProvider = TimerItemsDataProvider(count: 200)

        let timersBehavior = CollectionTimersBehavior(
            dataProvider: dataProvider,
            collectionView: collectionView)
        add(behaviors: [timersBehavior])

        collectionView?.register(UINib(nibName: "TimerCell", bundle: .main), forCellWithReuseIdentifier: "cell")
        collectionView?.dataSource = self
        collectionView?.delegate = self
    }
}

// MARK: - UICollectionViewDataSource

extension BenchmarkViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        dataProvider?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? TimerCell else {
            return UICollectionViewCell()
        }

        if let item = dataProvider?.item(at: indexPath.item) {
            cell.setup(item: item)
        }

        return cell
    }
}

// MARK: - UICollectionViewDelegate

extension BenchmarkViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        dataProvider?.item(at: indexPath.item).toggleEnabled()

        collectionView.deselectItem(at: indexPath, animated: true)
    }

    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        dataProvider?.item(at: indexPath.item).isActive = true
    }

    func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        dataProvider?.item(at: indexPath.item).isActive = false
    }
}
