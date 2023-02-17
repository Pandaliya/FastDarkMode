//
//  FSColorExtention.swift
//  FastDarkMode
//
//  Created by pan zhang on 2023/2/17.
//

import Foundation

let ModeManager = FSModeManager.shared
public extension UIColor {
    static func modeBundleColor(name: String, compatibleWith: UITraitCollection? = nil) -> UIColor {
        return UIColor.init(
            named: name,
            in:Bundle.modeBundle,
            compatibleWith: compatibleWith) ?? .white
    }
    
    static var modeBackground: UIColor {
        return ModeManager.mode.modeBackground
    }
    
    static var modeText: UIColor {
        return ModeManager.mode.modeText
    }
}


