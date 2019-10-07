//
//  LifecycleBehavior.swift
//  HomeWork-1
//
//  Created by Pavel Smelovsky on 17/09/2019.
//  Copyright © 2019 Pavel Smelovsky. All rights reserved.
//

import Foundation

public protocol LifecycleBehavior: class {

    /// Called before view will be appeared
    ///
    /// - Parameter animated: true if transition will be animated
    func beforeAppearing(_ animated: Bool)

    /// Called when view did appear
    ///
    /// - Parameter animated: true if transition was animated
    func whenAppeared(_ animated: Bool)

    /// Called before view will be disappeared
    ///
    /// - Parameter animated: true if transition will be animated
    func beforeDisappearing(_ animated: Bool)

    /// Called when view did disappear
    ///
    /// - Parameter animated: true if transition was animated
    func whenDisappeared(_ animated: Bool)
}

extension LifecycleBehavior {
    func beforeAppearing(_ animated: Bool) {}
    func whenAppeared(_ animated: Bool) {}
    func beforeDisappearing(_ animated: Bool) {}
    func whenDisappeared(_ animated: Bool) {}
}
