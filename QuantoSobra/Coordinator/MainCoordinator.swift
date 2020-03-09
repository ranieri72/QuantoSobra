//
//  MainCoordinator.swift
//  QuantoSobra
//
//  Created by ranieri.f.aguiar on 09/03/20.
//  Copyright © 2020 ranieri.f.aguiar. All rights reserved.
//

import UIKit

final class MainCoordinator: Coordinator {
    
    var rootViewController: UIViewController?
    var children: [Coordinator]
    
    private let window: UIWindow
    
    init(window: inout UIWindow?) {
        self.children = []
        self.window = UIWindow(frame: UIScreen.main.bounds)
        window = self.window
    }
    
    func start() {
        let controller = ExpensesListViewController()
        rootViewController = controller
        
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }
}
