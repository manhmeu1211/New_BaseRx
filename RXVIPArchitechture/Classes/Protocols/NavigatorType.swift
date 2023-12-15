//
//  NavigatorType.swift
//  RXVIPArchitechture
//
//  Created by Luong Manh on 15/12/2023.
//

import Foundation
import RxCocoa
import RxSwift

public protocol NavigatorType: Child, PopOver, Pushable {
    func makeViewController() -> UIViewController
}

public struct EmptyNavigator: NavigatorType {
    public init() {}
    public func makeViewController() -> UIViewController {
        return UIViewController()
    }
}

public protocol CanInit {
    init()
}

extension NavigatorType where Self: CanInit {
    func makeNavigator() -> Self {
        return Self()
    }
}
