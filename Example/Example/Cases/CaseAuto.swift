//
//  CaseAuto.swift
//  DemoTemplate
//
//  Created by pan zhang on 2023/1/6.
//

import Foundation

class CaseAuto: ExampleCase {
    var title: String = "跟随系统"
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
        
//        self.routerToContoller()
        FSModeManager.shared.updateMode(style: .auto)
        return true
    }
}

// MARK: - Case UI
extension CaseAuto {
    func configView(view: UIView) -> Bool {
        debugPrint("\(self): configView")
        view.backgroundColor = UIColor.modeBackground
        return true
    }
}
