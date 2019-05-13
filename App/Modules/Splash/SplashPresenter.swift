//
//  SplashPresenter.swift
//  App
//
//  Created by Red Pill on 4/1/19.
//  Copyright © 2019 ideveloper. All rights reserved.
//

import Foundation

class SplashPresenter: SplashPresenterProtocol {
    
    var view: SplashViewProtocol!
    var router: SplashRouterProtocol!
    
    func pushToMainViewController() {
        router.pushToMainVIewController()
    }
}
