//
//  ExpensesListViewModel.swift
//  QuantoSobra
//
//  Created by ranieri.f.aguiar on 09/03/20.
//  Copyright © 2020 ranieri.f.aguiar. All rights reserved.
//

struct ExpensesListViewModel {
    private let expensesList: [Expense]
    
    init(with expensesList: [Expense]) {
        self.expensesList = expensesList
    }
    
    func numberOfRows(in section: Int) -> Int {
        return expensesList.count
    }
    
    func cellForRow(at index: Int) -> Expense {
        return expensesList[index]
    }
}
