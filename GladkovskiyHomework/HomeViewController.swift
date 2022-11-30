//
//  HomeViewController.swift
//  GladkovskiyHomework
//
//  Created by Teacher on 29.11.2022.
//

import Foundation
import UIKit
import SnapKit
import OtusHomework

public class HomeViewController: UIViewController {
    public override func viewDidLoad(){
        let label = UILabel()
        label.font = .systemFont(ofSize: 24, weight: .thin)
        label.textColor = .white
        label.numberOfLines = 0
        label.text = "Николай Гладковский"
        let currentBundle = Bundle(for: HomeViewController.self)
        let image = UIImage(named: "profileImage", in: currentBundle, with: .none)
        let profileView = UIImageView(image: image)
        profileView.clipsToBounds = true
        profileView.layer.cornerRadius = 64
        
        view.addSubview(profileView)
        view.addSubview(label)
        
        profileView.snp.makeConstraints { make in
            make.bottom.equalTo(label.snp.top).offset(32)
            make.width.equalTo(128.0)
            make.height.equalTo(128.0)
        }
        
        label.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-32.0)
            make.trailing.equalToSuperview().offset(-32.0)
            make.leading.equalToSuperview().offset(32.0)
        }
        
        view.backgroundColor = .orange
    }
}

extension HomeViewController: HasOtusHomeworkView {
    public var squareView: UIView {
        return view
    }
}
