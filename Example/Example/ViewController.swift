//
//  ViewController.swift
//  DemoTemplate
//
//  Created by pan zhang on 2023/1/6.
//

import UIKit

class ViewController: ExampleCaseTableController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "FastDarkMode"
        self.navigationController?.navigationItem.largeTitleDisplayMode = .automatic
        
        let betaSet = FasetExampleCaseSet(title: "选择模式", fold: false)
        betaSet.cases.append(contentsOf: [
            CaseAuto(callBack: nil),
            CaseDark(callBack: nil),
            CaseLight(callBack: nil)
        ] as [ExampleCase] )
        self.testSets = [betaSet]
        
        self.view.backgroundColor = UIColor.modeBackground
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = super.tableView(tableView, cellForRowAt: indexPath)
        
        cell.backgroundColor = .clear
        cell.contentView.backgroundColor = .clear
        
        if #available(iOS 14.0, *) {
            var content = cell.defaultContentConfiguration()
            content.text = (cell.contentConfiguration as? UIListContentConfiguration)?.text
            content.textProperties.color = UIColor.modeText
            cell.contentConfiguration = content
        } else {
            cell.textLabel?.textColor = UIColor.modeText
        }
        
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        FSModeManager.shared.showModeChangeAnimate()
//        super.tableView(tableView, didSelectRowAt: indexPath)
//    }
    
}

