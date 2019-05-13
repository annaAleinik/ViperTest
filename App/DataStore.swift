//
//  DataStore.swift
//  App
//
//  Created by Red Pill on 4/8/19.
//  Copyright © 2019 ideveloper. All rights reserved.
//

import Foundation

class DataStore {
    
    static let shared = DataStore()
    private init() {}
    
    var commentsArray: [Comment] = []
    var filterComments: [Comment] = []
}

extension DataStore {
    
    func addItemsInCommentsArr(items: [Comment]) {
        commentsArray.append(contentsOf: items)
    }
}
