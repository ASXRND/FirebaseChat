//
//  SelfConfiguringCell.swift
//  VChat
//
//  Created by Александр on 27.04.2023.
//

import Foundation

protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure<U: Hashable>(with value: U)
}
