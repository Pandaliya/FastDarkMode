//
//  FSViewExtension.swift
//  FastDarkMode
//
//  Created by pan zhang on 2023/2/17.
//

import Foundation

public protocol FSModeDelegate {
    func styleConfig()
    func modeDidChanged()
}

extension FSModeDelegate {
    public func styleConfig() {}
    func modeDidChanged() {}
}

extension UIView: FSModeDelegate {
    public func modeDidChanged() {
        for view in self.subviews {
            view.modeDidChanged()
        }
        self.styleConfig()
    }
}
