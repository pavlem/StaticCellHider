//
//  ViewController.swift
//  AnimatorCell
//
//  Created by Pavle Mijatovic on 1/11/18.
//  Copyright © 2018 Pavle Mijatovic. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let cellHeights = [65, 50, 100, 30]
    @IBOutlet weak var cell0: UITableViewCell!
    @IBOutlet weak var cell1: UITableViewCell!
    @IBOutlet weak var cell2: UITableViewCell!
    @IBOutlet weak var cell3: UITableViewCell!
    var isCell2Hidden = false
    
    //MARK: - Actions
    @IBAction func showHide(_ sender: UIBarButtonItem) {
        tableView.beginUpdates()
        tableView.reloadData()
        isCell2Hidden = !isCell2Hidden
        tableView.endUpdates()
    }

    //MARK: - Tableview delegates
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 2 && isCell2Hidden {
            return 0
        }
        return CGFloat(cellHeights[indexPath.row])
    }
}

