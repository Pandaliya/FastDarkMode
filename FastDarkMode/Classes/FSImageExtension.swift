//
//  FSImageExtension.swift
//  FastDarkMode
//
//  Created by pan zhang on 2023/2/17.
//

import Foundation

var ModeBundle: Bundle? = nil

extension Bundle {
    static var modeBundle: Bundle? {
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
