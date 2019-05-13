//
//  DataModel.swift
//  App
//
//  Created by Red Pill on 4/1/19.
//  Copyright © 2019 ideveloper. All rights reserved.
//

import Foundation

typealias Comments = [Comment]

struct Comment: Codable {
    let id: Int
    let title: String
    let img: String
}
