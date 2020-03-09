//
//  ExpensesListTableCellView.swift
//  QuantoSobra
//
//  Created by ranieri.f.aguiar on 09/03/20.
//  Copyright © 2020 ranieri.f.aguiar. All rights reserved.
//

import UIKit

class ExpensesListTableViewCell: UITableViewCell {
    static let cellReuseIdentifier = "ExpensesListTableViewCell"
    
    private let nameLabel: UILabel
    private let dateLabel: UILabel
    private let valueLabel: UILabel
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        nameLabel = UILabel()
        dateLabel = UILabel()
        valueLabel = UILabel()
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateCell(with expense: Expense) {
        nameLabel.text = expense.name
        dateLabel.text = expense.date
        valueLabel.text = String(expense.value)
    }
}

extension ExpensesListTableViewCell: ViewCondingProtocol {
    func buildHierachy() {
        addViews(nameLabel, dateLabel, valueLabel)
    }
    
    func buildContraints() {
        valueLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        valueLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        valueLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        nameLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: valueLabel.leadingAnchor).isActive = true
        
        dateLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor).isActive = true
        dateLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        dateLabel.widthAnchor.constraint(equalTo: nameLabel.widthAnchor).isActive = true
    }
    
    func buildAdditionalConfiguration() {
        
    }
}
