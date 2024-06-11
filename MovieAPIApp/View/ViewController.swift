//
//  ViewController.swift
//  MovieAPIApp
//
//  Created by 심소영 on 6/10/24.
//

import UIKit
import Alamofire
import SnapKit

class ViewController: UIViewController {

    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHierarchy()
        configureLayout()
        configureUI()
        settingNavigationBarButton()
    }
    
    func configureHierarchy(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MovieTableViewCell.self, forCellReuseIdentifier: MovieTableViewCell.identifier)
        self.view.addSubview(tableView)
        tableView.rowHeight = 150
        tableView.estimatedSectionHeaderHeight = 60
        
    }
    func configureLayout(){
        tableView.snp.makeConstraints { make in
            make.edges.equalTo(view.safeAreaLayoutGuide)
        }
    }
    func configureUI(){
        self.view.backgroundColor = .white
        self.tableView.backgroundColor = .white
    }
    
    func settingNavigationBarButton(){
        let rightButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.search, target: self, action: #selector(rightButtonTapped))
        self.navigationItem.rightBarButtonItem = rightButton
        
        let leftButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.compose, target: self, action: #selector(leftButtonTapped))
        self.navigationItem.leftBarButtonItem = leftButton
    }
    
    @objc
    func rightButtonTapped(){
        let settingView = SettingViewController()
        self.navigationController?.pushViewController(settingView, animated: true)
    }
    
    @objc
    func leftButtonTapped(){
        let searchView = SearchViewController()
        self.navigationController?.pushViewController(searchView, animated: true)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MovieTableViewCell.identifier, for: indexPath) as! MovieTableViewCell
        return cell
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
//        label.snp.makeConstraints { make in
//            make.edges.equalToSuperview()
//        }
        label.numberOfLines = 0
        label.textAlignment = .left
        label.text = "ddddd \n ffffff"
        return label
    }
}
