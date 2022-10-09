//
//  ToDoCell.swift
//  ToDoCell
//
//  Created by Shota on 08.10.22.
//

import UIKit

protocol ToDoCellDelegate: AnyObject {
    func chcheckmarkTapped(sender: ToDoCell)
}

class ToDoCell: UITableViewCell {

    @IBOutlet var isCompleteButton: UIButton!
    @IBOutlet var titleLable: UILabel!

    weak var delegate: ToDoCellDelegate?

    @IBAction func completeButtonTapped(_ sender: UIButton) {
        delegate?.chcheckmarkTapped(sender: self)
    }
}
