//
//  RequireInput.swift
//  RXVIPArchitechture
//
//  Created by Luong Manh on 15/12/2023.
//

import Foundation
import RxSwift
import RxCocoa

public protocol RequiresInput {
    associatedtype NavigatorInput
    
    var input: ReplaySubject<NavigatorInput> { get }
}

public extension RequiresInput {
    func accept(input: NavigatorInput) {
        self.input.onNext(input)
    }
}
