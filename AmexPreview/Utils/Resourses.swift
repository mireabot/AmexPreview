//
//  Resourses.swift
//  AmexPreview
//
//  Created by Mikhail Kolkov on 11/21/22.
//

import UIKit

enum R {
    
    enum Images {
        static var card = UIImage(named: "card")
        static var menu = UIImage(named: "menu")
        static var logo = UIImage(named: "logo")
    }
    
    enum Strings {
        static var cardNumber = "XX-61048"
        static var cardName = "Gold Charge Card (INR)"
    }
    
    enum Colors {
        static var primary = UIColor(named: "primary")
        static var secondary = UIColor(named: "secondary")
        static var base = UIColor(named: "base")
    }
    
    enum Fonts {
        static func regular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
        
        static func bold(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica-Bold", size: size) ?? UIFont()
        }
    }
}

