//
//  DetailRouter.swift
//  App
//
//  Created by Red Pill on 4/2/19.
//  Copyright © 2019 ideveloper. All rights reserved.
//

import UIKit

class DetailRouter: DetailRouterProtocol {
    weak var viewController: DetailViewController!
    
    class func setupModule(with index: Int) -> UIViewController {
        let storyBoard = UIStoryboard(name: Constant.Default.mainStoryboardName, bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: String(describing: DetailViewController.self))
        if let view = viewController as? DetailViewController {
            let presenter = DetailPresenter()
            let interactor = DetailInteractor()
            let router = DetailRouter()
            
            view.presenter = presenter
            presenter.view = view
            presenter.router = router
            presenter.interactor = interactor
            presenter.index = index
            
            router.viewController = view
            return view
        }
        
        return UIViewController()
    }

}
