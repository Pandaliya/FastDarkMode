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
    
    /// 前景色
    var modeForeground: UIColor { get }
    
    /// 提示颜色（分割线，无法点击提示等）
    var modeHint: UIColor { get }
    
    /// 分割线颜色
    var modeLine: UIColor { get }
    
    // MARK: - 文字颜色
    
    /// 正文/标题颜色
    var modeText: UIColor { get }
    
    /// 提示颜色
    var modeHintText: UIColor { get }
    
    /// 正文颜色
    var modeSoftText: UIColor { get }
    
    /// 前台文本颜色（针对有背景色的文本）
    var modeFrontText: UIColor { get }

    // MARK: - 彩色
    
    /// 可点击强调色
    var touchColor: UIColor { get }
    
    /// 不可点击强调色
    var unenableColor: UIColor { get }
    
    /// 红色提示
    var modeRed: UIColor { get }
    
    /// 绿色提示
    var modeGreen: UIColor { get }
}


extension FSModeProtocol {
    func color(_ key: String) -> UIColor? {
        return self.colorsMap[key]
    }
    
    var imageNameTile: String { return "" }
    var themeColor: UIColor { return .systemOrange }
    var lightThemeColor: UIColor { return .systemOrange }
    
    var modeText: UIColor { return .black }
    var modeSoftText: UIColor { return .darkGray }
    var modeHintText: UIColor { return .lightGray }
    var modeFrontText: UIColor { return .white }
    
    var modeHint: UIColor { return .lightGray }
    var modeBackground: UIColor { return .white}
    var modeSubBackground: UIColor { return UIColor.init(white: 245/255, alpha: 1) }
    var modeForeground: UIColor { return .white }
    var modeLine: UIColor { return UIColor.init(white: 0.92, alpha: 1.0) }
    
    var touchColor: UIColor { return .orange }
    var unenableColor: UIColor { return UIColor.init(white: 0.88, alpha: 1.0) }
    var modeRed: UIColor { return UIColor.init(red: 235/255.0, green: 20/255.0, blue: 20/255.0, alpha: 1) }
    var modeGreen: UIColor { return UIColor.init(red: 73/255.0, green: 160/255.0, blue: 0, alpha: 1) }
}
