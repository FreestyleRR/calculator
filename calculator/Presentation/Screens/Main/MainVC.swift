//
//  MainVC.swift
//  calculator
//
//  Created by Pavel Sharkov on 22.09.2022.
//

import UIKit

class MainVC: UIViewController {
    var viewModel: MainVM!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
    
    
    
    
    //MARK: - Deinit -
    
    deinit {
        printDeinit(self)
    }
}
