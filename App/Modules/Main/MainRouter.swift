//
//  MainRouter.swift
//  App
//
//  Created by Red Pill on 4/1/19.
//  Copyright © 2019 ideveloper. All rights reserved.
//

import UIKit

class MainRouter: MainRouterProtocol {
    
    weak var viewController: MainViewController!

    static func setupModule() -> UIViewController {
        let storyBoard = UIStoryboard(name: Constant.Default.mainStoryboardName, bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: String(describing: MainViewController.self))
        if let view = viewController as? MainViewController {
            let presenter = MainPresenter()
            let interactor = MainInteracror()
            let router = MainRouter()
            
            view.presenter =  presenter
            presenter.view = view
            presenter.router = router
            presenter.interactor = interactor
            
            router.viewController = view
            return view
        }
        return UIViewController()
    }
    
    func pushToDetailVIewController(with index: Int) {
        let detailViewController = DetailRouter.setupModule(with: index)
        viewController.navigationController?.pushViewController(detailViewController, animated: true)
    }
    
}

