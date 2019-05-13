//
//  MainInteractor.swift
//  App
//
//  Created by Red Pill on 4/1/19.
//  Copyright © 2019 ideveloper. All rights reserved.
//

import Foundation

class MainInteracror: MainInteractorProtocol {
     var presenter: MainPresenterProtocol!
  
    func getComment(completion: @escaping ((Comments) -> Void)) {
        NetWorkService.apiManager.getComment { (result) in
            switch result {
            case .success(let comment):
                completion(comment)
            case .failure(let error):
                debugPrint(error)
            }
        }
    }
}
