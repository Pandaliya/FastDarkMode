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
    
    static var modeCard: UIColor {
        return ModeManager.mode.modeCardBackground
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
    
    static var modeYellow: UIColor {
        return ModeManager.mode.modeYellow
    }
    
    static var modeOrange: UIColor {
        return ModeManager.mode.modeOrange
    }
    
    // MAKR: - 动态颜色
    
    static func autoColor(light: UIColor, dark: UIColor? = nil) -> UIColor {
        return FMM.isDarkMode ? (dark ?? light) : light
    }
    
    
    // MARK: - 统一颜色
    static var indictorBackgroudColor: UIColor {
        return UIColor.init(red: 67/255.0, green: 73/255.0, blue: 84/255.0, alpha: 1)
    }
    
    static var indictorTextColor: UIColor {
        return UIColor.init(white: 1, alpha: 0.9)
    }
}


