//
//  FSModeAuto.swift
//  FastDarkMode
//
//  Created by pan zhang on 2023/2/17.
//

import Foundation

class FSModeDefault: FSModeProtocol {
    var colorsMap: [String : UIColor] = [:]
    
    var  modeBackground: UIColor {
        return  UIColor.modeBundleColor(name: "bg_color")
    }
    
    var modeText: UIColor {
        return UIColor.modeBundleColor(name: "text_color")
    }

}
