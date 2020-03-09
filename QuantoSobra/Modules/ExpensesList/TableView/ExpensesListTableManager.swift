//
//  ExpensesListTableManager.swift
//  QuantoSobra
//
//  Created by ranieri.f.aguiar on 09/03/20.
//  Copyright © 2020 ranieri.f.aguiar. All rights reserved.
//

import UIKit

class ExpensesListTableManager: NSObject {
    var viewModel: ExpensesListViewModel!
}

extension ExpensesListTableManager: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows(in: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ExpensesListTableViewCell.cellReuseIdentifier) as! ExpensesListTableViewCell
        let expense = viewModel.cellForRow(at: indexPath.row)
        cell.updateCell(with: expense)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // TODO:
    }
}
