//
//  Child.swift
//  RXVIPArchitechture
//
//  Created by Luong Manh on 15/12/2023.
//

import Foundation
import UIKit

public protocol Child {
    func add(to container: ViewControllerContainer)
}

public struct EmptyChild: Child, NavigatorType {
    public init() {}
    public func makeViewController() -> UIViewController {
        return UIViewController()
    }
}

public extension Child where Self: NavigatorType {
    func add(to container: ViewControllerContainer) {
        let viewController = makeViewController()
        container.add(viewController)
    }
}

public extension Child {
    func addFill(in viewController: UIViewController) {
        let container = ViewControllerContainer(parent: viewController, view: viewController.view)
        add(to: container)
    }
}
