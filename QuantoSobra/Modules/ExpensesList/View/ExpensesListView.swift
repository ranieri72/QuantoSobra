//
//  ExpensesListView.swift
//  QuantoSobra
//
//  Created by ranieri.f.aguiar on 09/03/20.
//  Copyright © 2020 ranieri.f.aguiar. All rights reserved.
//

import UIKit

final class ExpensesListView: UIView {
    
    private let tableView: UITableView
    private var tableViewManager: ExpensesListTableManager!
    var viewModel: ExpensesListViewModel! {
        didSet {
            tableViewManager.viewModel = self.viewModel
            tableView.reloadData()
        }
    }
    
    init() {
        tableView = UITableView()
        super.init(frame: .zero)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ExpensesListView: ViewCondingProtocol {
    func buildHierachy() {
        addViews(tableView)
    }
    
    func buildContraints() {
        tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
    
    func buildAdditionalConfiguration() {
        tableView.register(ExpensesListTableViewCell.self, forCellReuseIdentifier: ExpensesListTableViewCell.cellReuseIdentifier)
        
        tableViewManager = ExpensesListTableManager()
        tableView.dataSource = tableViewManager
        tableView.delegate = tableViewManager
    }
}
