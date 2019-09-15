//
//  FeedViewController.swift
//  HomeWork-1
//
//  Created by Pavel Smelovsky on 15/09/2019.
//  Copyright © 2019 Pavel Smelovsky. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let navctrl = segue.destination as? UINavigationController,
            let controller = navctrl.topViewController {

            controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem
            controller.navigationItem.leftItemsSupplementBackButton = true
        }
    }

}
