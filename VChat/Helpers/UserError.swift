//
//  UserError.swift
//  VChat
//
//  Created by Александр on 27.04.2023.
//  Copyright © 2023 Алексей Пархоменко. All rights reserved.
//

/*
Error handling for working with
 */

import Foundation

enum UserError {
    case notFilled
    case photoNotExist
}

extension UserError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .notFilled:
            return NSLocalizedString("Заполните все поля", comment: "")
        case .photoNotExist:
            return NSLocalizedString("Пользователь не выбрал фото", comment: "")

        }
    }
}
