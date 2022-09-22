//
//  MainCoord.swift
//  calculator
//
//  Created by Pavel Sharkov on 22.09.2022.
//

import UIKit

class MainCoord {
    
    private weak var window: UIWindow?
    
    private lazy var controller: MainVC = {
        let controller: MainVC = Storyboard.main.instantiate()
        controller.viewModel = MainVM(self)
        return controller
    }()
    
    lazy var root: UINavigationController = {
        let root = UINavigationController(rootViewController: controller)
        root.navigationBar.isHidden = true
        return root
    }()
    
    init(window: UIWindow) {
        self.window = window
        controller.viewModel = .init(self)
    }
}

//MARK: - Navigation -

extension MainCoord {
    func start() {
        root.pushViewController(controller, animated: false)
    }
}
