//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Swift MVP+VM Swift Xcode Templates
//

import UIKit
class ___VARIABLE_sceneName___UIController: NSObject {
    fileprivate unowned var tableView: UITableView
    weak var eventHandler: ___VARIABLE_sceneName____HandleCellUIEvents!
    
    fileprivate var dataSource: [___VARIABLE_sceneName___.InputField] = [] {
        didSet { tableView.reloadData() }
    }
    
    required init(_ tableView: UITableView, eventHandler: ___VARIABLE_sceneName____HandleCellUIEvents) {
        //self.eventHandler = eventHandler
        self.tableView = tableView
        self.eventHandler = eventHandler
    }
    
    // MARK: - UIController
    func initialize() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    deinit {
        printDebug("\(String(describing: self)) is being deInitialized.")
    }
}
// MARK: - UITableViewDataSource,UITableViewDelegate
extension ___VARIABLE_sceneName___UIController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ___VARIABLE_cellName___TableViewCell = tableView.dequeueReusableCell(indexPath: indexPath)
        cell.cellController = dataSource[indexPath.row]
        return cell
    }
}
