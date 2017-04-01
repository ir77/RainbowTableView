//
//  MasterViewController.swift
//  RainbowTableView
//
//  Created by 内村祐之 on 2017/04/01.
//  Copyright © 2017年 ucuc. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {
    fileprivate var objects = [Int].init(repeating: 0, count: 100)
}

// MARK: - Table View Delegate
extension MasterViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.backgroundColor = UIColor.rainbow[indexPath.row % 7]

        let startSize = CGSize(width: 0.0, height: view.frame.height)
        let startPath = CGPath(rect: CGRect(origin: view.center, size: startSize), transform: nil)
        let endPath = CGPath(rect: CGRect(origin: view.center, size: startSize).insetBy(dx: -view.frame.width, dy: -view.frame.height), transform: nil)
        let animation = CABasicAnimation(fromValue: startPath, toValue: endPath)
        cell.add(animation: animation)

        return cell
    }
}
