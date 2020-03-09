//
//  Coordinator.swift
//  QuantoSobra
//
//  Created by ranieri.f.aguiar on 09/03/20.
//  Copyright © 2020 ranieri.f.aguiar. All rights reserved.
//

import UIKit

protocol Coordinator {
    var rootViewController: UIViewController? { get }

    var children: [Coordinator] { get }

    func start()
}
