//
//  Label + Extension.swift
//  VChat
//
//  Created by Александр on 27.04.2023.
//

import UIKit

extension UILabel {
    
    convenience init(text: String, font: UIFont? = .avenir20()) {
        self.init()
        
        self.text = text
        self.font = font
    }
}

