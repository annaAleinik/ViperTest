//
//  SplashRouter.swift
//  App
//
//  Created by Red Pill on 4/1/19.
//  Copyright © 2019 ideveloper. All rights reserved.
//

import UIKit

class SplashRouter: SplashRouterProtocol {
   weak var viewController: SplashViewController!
    
    func pushToMainVIewController() {
        let mainViewController = MainRouter.setupModule()
        viewController.navigationController?.setViewControllers([mainViewController], animated: true)
    }
}
