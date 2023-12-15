//
//  ViewModelType.swift
//  RXVIPArchitechture
//
//  Created by Luong Manh on 15/12/2023.
//

import Foundation

public protocol ViewModelType {
    associatedtype Input
    associatedtype Output

    func transform(input: Input) -> Output
}
