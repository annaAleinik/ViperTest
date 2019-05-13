//
//  Constants.swift
//  App
//
//  Created by Red Pill on 4/5/19.
//  Copyright © 2019 ideveloper. All rights reserved.
//

import Foundation

enum Constant {
    enum Default {
        static let mainStoryboardName = "Main"
    }
    enum SplashViewController {}
    enum MainViewController {
        enum TableView {
            static let tableViewNibName = "TableViewCell"
            static let cellIdentifier = "cellIdentifier"
        }
    }
    enum DetailViewController {
        enum Cell {
            static let cell = "cell"
        }
    }
}
