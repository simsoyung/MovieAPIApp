//
//  ViewController.swift
//  MovieAPIApp
//
//  Created by 심소영 on 6/10/24.
//

import UIKit

class ViewController: UIViewController {

    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        settingNavigationBarButton()
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

