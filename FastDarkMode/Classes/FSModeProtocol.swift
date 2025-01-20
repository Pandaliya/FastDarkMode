//
//  FSModeProtocol.swift
//  FastDarkMode
//
//  Created by pan zhang on 2023/2/17.
//

import Foundation


public protocol FSModeProtocol {
//    var 
    var colorsMap: [String: UIColor] { get set }
    func color(_ key: String) -> UIColor?
    
    /// 模式资源图片结尾
    var imageNameTile: String { get }
    
    /// 主题色
    var themeColor: UIColor { get }
    
    /// 次级主题色
    var lightThemeColor: UIColor { get }
    
    // MARK: - 背景色
    /// 背景颜色
    var modeBackground: UIColor { get }
    
    /// 次级背景色
    var modeSubBackground: UIColor { get }
    
    /// 卡片色
    var modeCardBackground: UIColor { get }
    
    /// 提示颜色
    var modeHintBackground: UIColor { get }
    
    /// 分割线颜色
    var modeLine: UIColor { get }
    
    // MARK: - 文字颜色
    /// 标题颜色
    var modeTitle: UIColor { get }
    
    /// 正文颜色
    var modeText: UIColor { get }
    
    /// 提示颜色
    var modeHintText: UIColor { get }
    
    /// 必要柔和的正文颜色
    var modeSoftText: UIColor { get }

    // MARK: - 强调色
    /// 可点击强调色
    var touchColor: UIColor { get }
    
    /// 红色提示
    var modeRed: UIColor { get }
    
    /// 绿色提示
    var modeGreen: UIColor { get } 
    
    /// 黄色提示
    var modeYellow: UIColor { get }
    
    /// 橘色提示
    var modeOrange: UIColor { get }
    
    func configTheme(_ color: UIColor, light: UIColor)
}


public extension FSModeProtocol {
    func color(_ key: String) -> UIColor? {
        return self.colorsMap[key]
    }
    
    var imageNameTile: String { return "" }
    var themeColor: UIColor { return .systemOrange }
    var lightThemeColor: UIColor { return .systemOrange }
    
    var modeTitle: UIColor { return UIColor.modeBundleColor(name: "text_title_color") }
    var modeText: UIColor { return UIColor.modeBundleColor(name: "text_color") }
    var modeSoftText: UIColor { return UIColor.modeBundleColor(name: "text_soft_color") }
    var modeHintText: UIColor { return UIColor.modeBundleColor(name: "alpha_50_color") }
    
    var modeBackground: UIColor { return UIColor.modeBundleColor(name: "bg_color") }
    var modeSubBackground: UIColor { return UIColor.modeBundleColor(name: "bg_sub_color") }
    var modeCardBackground: UIColor { return UIColor.modeBundleColor(name: "bg_card_color") }
    var modeHintBackground: UIColor { return UIColor.modeBundleColor(name: "bg_hint_color") }
    var modeLine: UIColor { return UIColor.modeBundleColor(name: "bg_line_color") }
    
    var touchColor: UIColor { return UIColor.modeBundleColor(name: "accent_blue") }
    var modeRed: UIColor { return UIColor.modeBundleColor(name: "accent_red") }
    var modeGreen: UIColor { return UIColor.modeBundleColor(name: "accent_green") }
    var modeOrange: UIColor { return UIColor.modeBundleColor(name: "accent_orange") }
    
    func configTheme(_ color: UIColor, light: UIColor) {}
}
