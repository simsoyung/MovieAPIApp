//
//  MovieTableViewCell.swift
//  MovieAPIApp
//
//  Created by 심소영 on 6/10/24.
//

import UIKit
import SnapKit

class MovieTableViewCell: UITableViewCell {
    
    let nameLabel = UILabel()
    
    static let identifier = "MovieTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureHierarchy()
        configureLayout()
        configureUI()
    }

    func configureHierarchy(){
        contentView.addSubview(nameLabel)
    }
    func configureLayout(){
        nameLabel.snp.makeConstraints { make in
            make.edges.equalTo(contentView.safeAreaLayoutGuide).offset(40)
        }
    }
    func configureUI(){
        nameLabel.text = "dddddddddd"
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
