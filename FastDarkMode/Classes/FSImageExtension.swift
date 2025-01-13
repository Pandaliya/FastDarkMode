//
//  FSImageExtension.swift
//  FastDarkMode
//
//  Created by pan zhang on 2023/2/17.
//

import Foundation

var ModeBundle: Bundle? = nil

extension Bundle {
    public static var modeBundle: Bundle? {
        if ModeBundle == nil {
            var path = Bundle.main.url(forResource: "Frameworks", withExtension: nil)
            path = path?.appendingPathComponent("FastDarkMode")
            path = path?.appendingPathExtension("framework")
            if let p = path {
                let bundle = Bundle.init(url: p)
                let smpath = bundle?.url(forResource: "FastDarkMode", withExtension: "bundle")
                if let sp = smpath {
                    ModeBundle = Bundle.init(url: sp)
                }
            }
        }
        return ModeBundle
    }
}

extension UIImage {
    /// 使用不同bundle的图片（podfile使用use_frameworks）
    /// - Parameter name: 图片名称
    /// - Returns: 图片数据
    public static func modeImage(bundle: Bundle?, name:String) -> UIImage? {
        guard let smb = bundle else {
            return nil
        }
        
        let styleName = name + FSModeManager.shared.imageNameTile
        
        if #available(iOS 13.0, *) {
            let image = UIImage(named: styleName, in: smb, with: nil)
            if image != nil {
                return image
            }
            return UIImage(named: name, in: smb, with: nil)
        } else {
            let img =  UIImage.init(named: styleName, in: smb, compatibleWith: nil)
            if img != nil {
                return img
            }
            return UIImage.init(named: name, in: smb, compatibleWith: nil)
        }
    }
}
