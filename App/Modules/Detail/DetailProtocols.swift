//
//  DetailProtocols.swift
//  App
//
//  Created by Red Pill on 4/2/19.
//  Copyright © 2019 ideveloper. All rights reserved.
//

import UIKit

protocol DetailViewProtocol: class {
}

protocol DetailPresenterProtocol: class {
    var item: Comment! { get set }
    var index: Int! {get set}
}

protocol DetailInteractorProtocol: class {
}

protocol DetailRouterProtocol: class {
}
