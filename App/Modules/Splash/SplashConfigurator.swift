//
//  SplashConfigurator.swift
//  App
//
//  Created by Red Pill on 4/1/19.
//  Copyright © 2019 ideveloper. All rights reserved.
//

import UIKit

class SplashConfigurator: SplashConfiguratorProtocol {
        func configModule(with viewController: SplashViewController) {
            let presenter = SplashPresenter()
            let router = SplashRouter()
            
            viewController.presenter = presenter
            presenter.router = router
            router.viewController = viewController
        }
}

