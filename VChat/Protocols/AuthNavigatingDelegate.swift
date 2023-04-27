//
//  AuthNavigatingDelegate.swift
//  VChat
//
//  Created by Александр on 27.04.2023.
//  Copyright © 2023 Алексей Пархоменко. All rights reserved.
//

import Foundation

/*
 The delegate of the transition between controllers, closes in one place in another opens the desired aircraft VC.
*/
protocol AuthNavigatingDelegate: AnyObject {
    func toLoginVC()
    func toSugnUpVC()
}
