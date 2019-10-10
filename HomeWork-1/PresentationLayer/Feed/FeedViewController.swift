//
//  FeedViewController.swift
//  HomeWork-1
//
//  Created by Pavel Smelovsky on 15/09/2019.
//  Copyright © 2019 Pavel Smelovsky. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView?

    private var dataProvider: FeedDataProvider?

    override func viewDidLoad() {
        super.viewDidLoad()

        add(behaviors: [PrintMethodsLifecycleBehavior()])

        dataProvider = FeedDataProvider(count: 20)
        tableView?.delegate = self
        tableView?.dataSource = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let navctrl = segue.destination as? UINavigationController,
            let controller = navctrl.topViewController {

            controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem
            controller.navigationItem.leftItemsSupplementBackButton = true
        }
    }

}

// MARK: - UITableViewDataSource

extension FeedViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataProvider?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = dataProvider?.item(at: indexPath.row)
        return cell
    }
}

// MARK: - UITableViewDelegate

extension FeedViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Feed", bundle: .main)
        if let viewController = storyboard.instantiateInitialViewController() {
            self.show(viewController, sender: self)
        }
    }
}
