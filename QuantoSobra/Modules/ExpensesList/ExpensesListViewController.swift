//
//  ExpensesListViewController.swift
//  QuantoSobra
//
//  Created by ranieri.f.aguiar on 09/03/20.
//  Copyright © 2020 ranieri.f.aguiar. All rights reserved.
//

import UIKit

class ExpensesListViewController: UIViewController {
    
    override func loadView() {
        let expensesListView = ExpensesListView()
        // TODO: expensesListView.viewModel = ExpensesListViewModel(with: expenseList)
        view = expensesListView
    }
}
