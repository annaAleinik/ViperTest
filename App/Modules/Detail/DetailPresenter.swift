//
//  DetailPresenter.swift
//  App
//
//  Created by Red Pill on 4/2/19.
//  Copyright © 2019 ideveloper. All rights reserved.
//

import Foundation

class DetailPresenter: DetailPresenterProtocol {
    
    weak var view: DetailViewProtocol!
    var interactor: DetailInteractorProtocol!
    var router: DetailRouterProtocol!
    
    var item: Comment!
    var index: Int!

}
