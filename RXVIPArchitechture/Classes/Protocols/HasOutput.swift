//
//  HasOutput.swift
//  RXVIPArchitechture
//
//  Created by Luong Manh on 15/12/2023.
//

import Foundation
import RxSwift
import RxCocoa

public protocol HasOutput {
    associatedtype NavigatorOutput
    
    var output: ReplaySubject<NavigatorOutput> { get }
}

public extension HasOutput {
    
    func accept(output: NavigatorOutput) {
        self.output.onNext(output)
    }
}
