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
}


public extension FSModeProtocol {
    func color(_ key: String) -> UIColor? {
        return self.colorsMap[key]
    }
    
    var imageNameTile: String { return "" }
    var themeColor: UIColor { return .systemOrange }
    var lightThemeColor: UIColor { return .systemOrange }
    
    var modeTitle: UIColor { return .white }
    var modeText: UIColor { return .black }
    var modeSoftText: UIColor { return .darkGray }
    var modeHintText: UIColor { return .lightGray }
    
    var modeBackground: UIColor { return .white}
    var modeSubBackground: UIColor { return UIColor.init(white: 245/255, alpha: 1) }
    var modeCardBackground: UIColor { return .white }
    var modeHintBackground: UIColor { return .lightGray }
    var modeLine: UIColor { return UIColor.init(white: 0.92, alpha: 1.0) }
    
    var touchColor: UIColor { return .orange }
    var modeRed: UIColor { return UIColor.init(red: 235/255.0, green: 20/255.0, blue: 20/255.0, alpha: 1) }
    var modeGreen: UIColor { return UIColor.init(red: 73/255.0, green: 160/255.0, blue: 0, alpha: 1) }
}
