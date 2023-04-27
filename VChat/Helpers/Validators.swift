//
//  Validators.swift
//  VChat
//
//  Created by Александр on 27.04.2023.
//

/*
 The function of checking the filling of fields and validators for Email and Password

*/

import Foundation

class Validators {

    static func isFilled(email: String?, password: String?, confirmPassword: String?) -> Bool {
        guard let password = password,
              let confirmPassword = confirmPassword,
              let email = email,
              password != "",
              confirmPassword != "",
              email != "" else {
            return false
        }
        return true
    }

    static func isFilled(userName: String?, description: String?, sex: String?) -> Bool {
        guard let description = description,
              let sex = sex,
              let userName = userName,
              description != "",
              sex != "",
              userName != "" else {
            return false
        }
        return true
    }

    //MARK: - IsValidEmail
     static func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }

    //MARK: - IsValidPassword
     func isValidPassword(_ password: String) -> Bool {
        let passwordRegEx = "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,64}"
        let passwordPred = NSPredicate(format:"SELF MATCHES %@", passwordRegEx)
        return passwordPred.evaluate(with: password)
    }



}
