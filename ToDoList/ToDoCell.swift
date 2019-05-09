//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Charudut Shetty on 5/9/19.
//  Copyright © 2019 Charudut Shetty. All rights reserved.
//

import Foundation
import UIKit

@objc protocol ToDoCellDelegate: class{
    func checkmarkTapped(sender: ToDoCell)
}

class ToDoCell: UITableViewCell {
    
    var delegate: ToDoCellDelegate?
    
    @IBOutlet weak var isCompleteButton: UIButton!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    
    @IBAction func completeButtonTapped(_ sender: UIButton) {
        delegate?.checkmarkTapped(sender: self)
    }
    
    
}
