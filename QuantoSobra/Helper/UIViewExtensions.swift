//
//  UIViewExtensions.swift
//  QuantoSobra
//
//  Created by ranieri.f.aguiar on 09/03/20.
//  Copyright © 2020 ranieri.f.aguiar. All rights reserved.
//

import UIKit

extension UIView {
    func addViews(_ views: UIView...) {
        for view in views {
            view.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(view)
        }
    }
}
