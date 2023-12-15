//
//  Pushable.swift
//  RXVIPArchitechture
//
//  Created by Luong Manh on 15/12/2023.
//

import UIKit

public protocol Pushable {
    func push(to navigationController: UINavigationController)
}

public extension Pushable where Self: NavigatorType {
    func push(to navigationController: UINavigationController) {
        let viewController = makeViewController()
        navigationController.pushViewController(viewController, animated: true)
    }
}
