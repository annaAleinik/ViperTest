//
//  MainPresenter.swift
//  App
//
//  Created by Red Pill on 4/1/19.
//  Copyright © 2019 ideveloper. All rights reserved.
//

import Foundation

class MainPresenter: MainPresenterProtocol {

    
    
    var view: MainViewProtocol!
    var interactor: MainInteractorProtocol!
    var router: MainRouterProtocol!

    func getComment() {
        interactor.getComment {[weak self] (comments) in
            guard let self = self else {return}
            DataStore.shared.addItemsInCommentsArr(items: comments)
            self.view.configureTable()
        }
    }
    
    func pushToDetailVIewController(with index: Int) {
        router.pushToDetailVIewController(with: index)
    }}
