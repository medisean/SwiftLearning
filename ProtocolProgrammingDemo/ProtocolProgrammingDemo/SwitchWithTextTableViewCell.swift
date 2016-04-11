//
//  SwitchWithTextTableViewCell.swift
//  ProtocolProgrammingDemo
//
//  Created by bruce on 16/4/11.
//  Copyright © 2016年 ZouLiangming. All rights reserved.
//

import UIKit

//http://www.swiftmi.com/topic/352.html

protocol SwitchWithTextCellProtocol {
    var title: String { get }
    var switchOn: Bool { get }
    
    func onSwitchTogleOn(on: Bool)
}

class SwitchWithTextTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var switchToggle: UISwitch!
    
    private var delegate: SwitchWithTextCellProtocol?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(withDelegate delegate: SwitchWithTextCellProtocol) {
        self.delegate = delegate
        
        label.text = delegate.title
        switchToggle.on = delegate.switchOn
    }
    
    @IBAction func onSwitchToggle(sender: UISwitch) {
        delegate?.onSwitchTogleOn(sender.on)
    }
}