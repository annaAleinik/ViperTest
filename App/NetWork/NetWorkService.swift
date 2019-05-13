//
//  MainWorker.swift
//  App
//
//  Created by Red Pill on 4/1/19.
//  Copyright © 2019 ideveloper. All rights reserved.
//

import Foundation
import Alamofire

class NetWorkService {
    static let apiManager = NetWorkService()
    
    func getComment(completion: @escaping (Result<Comments>) -> Void) {
        let url = "http://private-db05-jsontest111.apiary-mock.com/androids"

        AF.request(url, method: HTTPMethod.get, parameters: nil).responseDecodable {(response: DataResponse<Comments>) in
            if response.error != nil {
                debugPrint("Error: \(String(describing: response.error?.localizedDescription))")
            } else {
                completion(response.result)
            }
        }
    }
}
