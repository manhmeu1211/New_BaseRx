//
//  PopOver.swift
//  RXVIPArchitechture
//
//  Created by Luong Manh on 15/12/2023.
//

import UIKit

public protocol PopOver {
    func present(from presentingViewController: UIViewController)
}

public extension PopOver where Self: NavigatorType {
    func present(from presentingViewController: UIViewController) {
        let viewController = makeViewController()
        presentingViewController.present(viewController, animated: true)
    }
}
