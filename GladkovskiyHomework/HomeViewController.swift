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
        label.font = .systemFont(ofSize: 32, weight: .thin)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Николай Гладковский"
        label.layer.borderWidth = 8
        label.layer.borderColor = UIColor.white.cgColor
        
        let currentBundle = Bundle(for: HomeViewController.self)
        let image = UIImage(named: "profileImage", in: currentBundle, with: .none)
        let profileView = UIImageView(image: image)
        profileView.clipsToBounds = true
        profileView.layer.cornerRadius = 80
        
        view.addSubview(profileView)
        view.addSubview(label)
        
        profileView.snp.makeConstraints { make in
            make.bottom.equalTo(label.snp.top).offset(-32)
            make.width.equalTo(160.0)
            make.height.equalTo(160.0)
            make.center.equalToSuperview()
        }
        
        label.snp.makeConstraints { make in
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
