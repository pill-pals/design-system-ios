//
//  DesignColours.swift
//  DesignSystem
//
//  Created by William Harvey on 2019-09-23.
//  Copyright © 2019 PillPals. All rights reserved.
//

import Foundation
import UIKit

public class DesignColours {
    public static var orange = UIColor(hexString: "#FF7F00")
    public static var gold = UIColor(hexString: "#FFD200")
    public static var turquoise = UIColor(hexString: "#00DFBC")
    public static var lightBlue = UIColor(hexString: "#DADAEA")
    public static var purple = UIColor(hexString: "#28275A")

    public init() {
        // Set read-onlys
        var primary: UIColor {
            get { return DesignColours.turquoise }
        }
        var secondary: UIColor {
            get { return DesignColours.gold }
        }
    }
}
