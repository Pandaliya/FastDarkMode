//
//  FSModeAuto.swift
//  FastDarkMode
//
//  Created by pan zhang on 2023/2/17.
//

import Foundation

open class FSModeDefault: FSModeProtocol {
    open var colorsMap: [String : UIColor] = [:]
    
    // MARK: - 背景色
    open var modeBackground: UIColor = UIColor.modeBundleColor(name: "bg_color")
    open var modeSubBackground: UIColor = UIColor.modeBundleColor(name: "bg_sub_color")
    open var modeCardBackground: UIColor = UIColor.modeBundleColor(name: "bg_card_color")
    open var modeHintBackground: UIColor = UIColor.modeBundleColor(name: "bg_hint_color")
    open var modeLine: UIColor = UIColor.modeBundleColor(name: "bg_line_color")
    
    // MARK: - 文字颜色
    open var modeText: UIColor  = UIColor.modeBundleColor(name: "text_color")
    open var modeTitle: UIColor = UIColor.modeBundleColor(name: "text_title_color")
    open var modeSoftText: UIColor = UIColor.modeBundleColor(name: "text_soft_color")
    open var modeHintText: UIColor = UIColor.modeBundleColor(name: "alpha_50_color")
    
    // MARK: - 强调色
    open var touchColor: UIColor = UIColor.modeBundleColor(name: "accent_blue")
    open var modeRed: UIColor = UIColor.modeBundleColor(name: "accent_red")
    open var modeGreen: UIColor = UIColor.modeBundleColor(name: "accent_green")
    open var modeOrange: UIColor = UIColor.modeBundleColor(name: "accent_orange")
    open var modeYellow: UIColor = UIColor.modeBundleColor(name: "accent_yellow")
    
    open var themeColor: UIColor = UIColor.modeBundleColor(name: "accent_orange")
    open var lightThemeColor: UIColor = UIColor.modeBundleColor(name: "accent_yellow")
    
    open func configTheme(_ color: UIColor, light: UIColor) {
        self.themeColor = color
        self.lightThemeColor = light
    }
}
