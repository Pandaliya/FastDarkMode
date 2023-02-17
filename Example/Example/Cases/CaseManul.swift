//
//  CaseManul.swift
//  Example
//
//  Created by pan zhang on 2023/2/17.
//

import Foundation

class CaseDark: ExampleCase {
    var title: String = "黑夜模式"
    var callBack: (() -> ())? = nil
    
    convenience init(callBack: (() -> ())?) {
        self.init()
        self.callBack = callBack
    }
    
    func caseAction() -> Bool {
        if let callBack = callBack {
            debugPrint("\(type(of: self)) Executing: call back")
            callBack()
        }
        debugPrint("\(type(of: self))  Executing: case action")
        FSModeManager.shared.updateMode(style: .dark)
        return true
    }
}

class CaseLight: ExampleCase {
    var title: String = "白天模式"
    var callBack: (() -> ())? = nil
    
    convenience init(callBack: (() -> ())?) {
        self.init()
        self.callBack = callBack
    }
    
    func caseAction() -> Bool {
        if let callBack = callBack {
            debugPrint("\(type(of: self)) Executing: call back")
            callBack()
        }
        debugPrint("\(type(of: self))  Executing: case action")
        FSModeManager.shared.updateMode(style: .light)
        return true
    }
}
