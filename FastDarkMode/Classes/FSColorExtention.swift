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
    
    // MARK: - 主题色
    static var modeTheme: UIColor {
        return ModeManager.mode.themeColor
    }
    
    static var modeLightTheme: UIColor {
        return ModeManager.mode.lightThemeColor
    }
    
    // MARK: - 背景色
    static var modeBackground: UIColor {
        return ModeManager.mode.modeBackground
    }
    
    static var modeSubBackground: UIColor {
        return ModeManager.mode.modeSubBackground
    }
    
    static var modeHint: UIColor {
        return ModeManager.mode.modeHintBackground
    }
    
    static var modeLine: UIColor {
        return ModeManager.mode.modeLine
    }
    
    // MARK: - 文字颜色
    static var modeTitle: UIColor {
        return ModeManager.mode.modeTitle
    }
    
    static var modeText: UIColor {
        return ModeManager.mode.modeText
    }
    
    static var modeSoftText: UIColor {
        return ModeManager.mode.modeSoftText
    }
    
    static var modeHintText: UIColor {
        return ModeManager.mode.modeHintText
    }
    
    // MARK: - 强调色
    static var modeTouchColor: UIColor {
        return ModeManager.mode.touchColor
    }
    
    static var modeRed: UIColor {
        return ModeManager.mode.modeRed
    }
    
    static var modeGreen: UIColor {
        return ModeManager.mode.modeGreen
    }
}


