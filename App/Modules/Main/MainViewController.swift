//
//  ViewController.swift
//  App
//
//  Created by Red Pill on 4/1/19.
//  Copyright © 2019 ideveloper. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    var presenter: MainPresenterProtocol!
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    private var timer = Timer()
    
    lazy var refreshControl: UIRefreshControl = {
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action:
            #selector(handleRefresh(_:)),
                                 for: UIControl.Event.valueChanged)
        refreshControl.tintColor = UIColor.red
        
        return refreshControl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.getComment()
        tableView.addSubview(self.refreshControl)
        searchBar.delegate = self
        
    }
    
    @objc private func handleRefresh(_ refreshControl: UIRefreshControl) {
        presenter.getComment()
        // tableView.reloadData()
        refreshControl.endRefreshing()
    }
    
    @objc private func output(){
        if timer.userInfo != nil {
            tableView.reloadData()
        }
        timer.invalidate()
    }
}

extension MainViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(output), userInfo: searchText, repeats: false)
        
        let filtrData = DataStore.shared.commentsArray.filter {
            return $0.title.range(of: searchText, options: .caseInsensitive) != nil
        }
        if filtrData.isEmpty {
            DataStore.shared.filterComments = DataStore.shared.commentsArray
        } else {
            DataStore.shared.filterComments = filtrData
        }
    }
}

extension MainViewController: MainViewProtocol {
    func configureTable() {
        DataStore.shared.filterComments = DataStore.shared.commentsArray
        tableView.register(UINib(nibName: Constant.MainViewController.TableView.tableViewNibName, bundle: nil), forCellReuseIdentifier: Constant.MainViewController.TableView.cellIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataStore.shared.filterComments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constant.MainViewController.TableView.cellIdentifier, for: indexPath) as! TableViewCell
        cell.configCell(with: DataStore.shared.filterComments[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.pushToDetailVIewController(with: indexPath.row)
    }
}

