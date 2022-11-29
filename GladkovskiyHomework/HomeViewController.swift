//
//  HomeViewController.swift
//  GladkovskiyHomework
//
//  Created by Teacher on 29.11.2022.
//

import Foundation
import UIKit
import SnapKit

public class HomeViewController: UIViewController {
    public override func viewDidLoad(){
        let label = UILabel()
        label.font = .systemFont(ofSize: 48, weight: .thin)
        label.textColor = .white
        label.numberOfLines = 0
        label.text = "Николай Гладковский"
        
        view.addSubview(label)
        
        label.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.trailing.equalToSuperview().offset(-32.0)
            make.leading.equalToSuperview().offset(32.0)
        }
        
        view.backgroundColor = .orange
    }
}
