//
//  SplashViewController.swift
//  App
//
//  Created by Red Pill on 4/1/19.
//  Copyright © 2019 ideveloper. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController, SplashViewProtocol {
    var presenter: SplashPresenterProtocol!
    var configurator = SplashConfigurator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configModule(with: self)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
            presenter.pushToMainViewController()
    }    
}
