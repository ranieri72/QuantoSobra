//
//  ExpensesListView.swift
//  QuantoSobra
//
//  Created by ranieri.f.aguiar on 09/03/20.
//  Copyright © 2020 ranieri.f.aguiar. All rights reserved.
//

import UIKit

final class ExpensesListView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ExpensesListView: ViewCondingProtocol {
    func buildHierachy() {
        
    }
    
    func buildContraints() {
        
    }
    
    func buildAdditionalConfiguration() {
        backgroundColor = .blue
    }
}
