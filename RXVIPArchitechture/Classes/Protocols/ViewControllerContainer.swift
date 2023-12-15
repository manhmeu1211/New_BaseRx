//
//  ViewControllerContainer.swift
//  RXVIPArchitechture
//
//  Created by Luong Manh on 15/12/2023.
//

import UIKit

public struct ViewControllerContainer {
    public weak var parent: UIViewController?
    public weak var view: UIView?
    
    public init(parent: UIViewController, view: UIView) {
        self.parent = parent
        self.view = view
    }
}

extension ViewControllerContainer {
    public func add(_ viewController: UIViewController?) {
        guard let parent = self.parent,
              let container = self.view
        else { return }
        parent.addChild(viewController, to: container)
    }
}
