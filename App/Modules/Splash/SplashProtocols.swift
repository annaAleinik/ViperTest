//
//  SplashProtocols.swift
//  App
//
//  Created by Red Pill on 4/1/19.
//  Copyright © 2019 ideveloper. All rights reserved.
//

import UIKit

protocol SplashViewProtocol {
    
}

protocol SplashPresenterProtocol {
    func pushToMainViewController()
}

protocol SplashRouterProtocol {
    func pushToMainVIewController()
}

protocol SplashConfiguratorProtocol {
    func configModule(with viewController: SplashViewController)
    
}
