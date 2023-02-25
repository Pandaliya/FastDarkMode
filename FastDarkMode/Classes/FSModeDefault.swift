//
//  FSModeAuto.swift
//  FastDarkMode
//
//  Created by pan zhang on 2023/2/17.
//

import Foundation

open class FSModeDefault: FSModeProtocol {
    public var colorsMap: [String : UIColor] = [:]
    
    // MARK: - 背景色
    public var modeBackground: UIColor = UIColor.modeBundleColor(name: "bg_color")
    public var modeSubBackground: UIColor = UIColor.modeBundleColor(name: "bg_sub_color")
    public var modeCardBackground: UIColor = UIColor.modeBundleColor(name: "bg_card_color")
    public var modeHintBackground: UIColor = UIColor.modeBundleColor(name: "bg_hint_color")
    public var modeLine: UIColor = UIColor.modeBundleColor(name: "bg_line_color")
    
    // MARK: - 文字颜色
    public var modeText: UIColor  = UIColor.modeBundleColor(name: "text_color")
    public var modeTitle: UIColor = UIColor.modeBundleColor(name: "text_title_color")
    public var modeSoftText: UIColor = UIColor.modeBundleColor(name: "text_soft_color")
    public var modeHintText: UIColor = UIColor.modeBundleColor(name: "alpha_50_color")
    
    // MARK: - 强调色
    public var touchColor: UIColor = UIColor.modeBundleColor(name: "accent_blue")
    public var modeRed: UIColor = UIColor.modeBundleColor(name: "accent_red")
    public var modeGreen: UIColor = UIColor.modeBundleColor(name: "accent_green")
    public var modeOrange: UIColor = UIColor.modeBundleColor(name: "accent_orange")
    public var modeYellow: UIColor = UIColor.modeBundleColor(name: "accent_yellow")
    
    public var themeColor: UIColor = UIColor.modeBundleColor(name: "accent_orange")
    public var lightThemeColor: UIColor = UIColor.modeBundleColor(name: "accent_yellow")
    
    public func configTheme(_ color: UIColor, light: UIColor) {
        self.themeColor = color
        self.lightThemeColor = light
    }
}
