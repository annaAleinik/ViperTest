//
//  MainProtocols.swift
//  App
//
//  Created by Red Pill on 4/1/19.
//  Copyright © 2019 ideveloper. All rights reserved.
//

import Foundation

protocol MainViewProtocol {
    func configureTable()
}

protocol MainPresenterProtocol {
    func getComment()
    func pushToDetailVIewController(with index: Int)
}

protocol MainInteractorProtocol {
    func getComment(completion: @escaping ((Comments) -> Void))
}

protocol MainRouterProtocol {
    func pushToDetailVIewController(with index: Int)
}
