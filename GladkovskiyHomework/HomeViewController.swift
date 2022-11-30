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

public final class HomeViewController: UIViewController {
    let label = UILabel()
    let profileView = UIImageView()
    
    public override func viewDidLoad(){
        super.viewDidLoad()
        configureView()
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tuneSizes()
    }
}

private extension HomeViewController {
    func configureView(){
        view.addSubview(profileView)
        view.addSubview(label)
        
        profileView.snp.makeConstraints { make in
            make.bottom.equalTo(label.snp.top).offset(-32)
            make.width.equalTo(32)
            make.height.equalTo(32)
            make.center.equalToSuperview()
        }
        
        label.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-32.0)
            make.leading.equalToSuperview().offset(32.0)
        }
        
        label.font = .systemFont(ofSize: 32, weight: .thin)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Николай Гладковский"
        
        
        let currentBundle = Bundle(for: HomeViewController.self)
        let image = UIImage(named: "profileImage", in: currentBundle, with: .none)
        profileView.image = image
        profileView.clipsToBounds = true
        profileView.layer.borderWidth = 8
        profileView.layer.borderColor = UIColor.white.cgColor

        view.backgroundColor = .orange
    }
    
    func tuneSizes(){
        let side = view.frame.width - 64
        profileView.layer.cornerRadius = side * 0.5
        profileView.snp.updateConstraints { make in
            make.bottom.equalTo(label.snp.top).offset(-32)
            make.width.equalTo(side)
            make.height.equalTo(side)
            make.center.equalToSuperview()
        }
    }
}

extension HomeViewController: HasOtusHomeworkView {
    public var squareView: UIView {
        return view
    }
}
