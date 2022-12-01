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
    let mainButton = UIButton()
    
    public override func viewDidLoad(){
        super.viewDidLoad()
        configureView()
    }
}

private extension HomeViewController {
    func configureView(){
        view.addSubview(profileView)
        view.addSubview(label)
        view.addSubview(mainButton)
        
        let side: CGFloat = 200.0
        
        profileView.snp.makeConstraints { make in
            make.bottom.equalTo(label.snp.top).offset(-16)
            make.width.equalTo(side)
            make.height.equalTo(side)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-64)
        }
        
        mainButton.snp.makeConstraints { make in
            make.edges.equalTo(profileView)
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
        profileView.layer.borderWidth = 2
        profileView.layer.borderColor = UIColor.white.cgColor
        
        profileView.layer.cornerRadius = side * 0.5
        view.backgroundColor = .orange
        
        weak var weakSelf = self
        mainButton.addTarget(weakSelf, action: #selector(mainButtonDidTap), for: .touchUpInside)
    }
}

extension HomeViewController: HasOtusHomeworkView {
    public var squareView: UIView? {
        view
    }
    
    public var squareViewController: UIViewController? {
        self
    }
    

}

private extension HomeViewController {
    @objc func mainButtonDidTap() {
        let pickerController = UIImagePickerController()
        pickerController.delegate = self
        pickerController.allowsEditing = true
        pickerController.mediaTypes = ["public.image", "public.movie"]
        pickerController.sourceType = .camera
        present(pickerController, animated: true)
    }
    
    func pickerController(_ controller: UIImagePickerController, didSelect image: UIImage?) {
        controller.dismiss(animated: true, completion: nil)

        if let image = image {
            self.profileView.image = image
        }
    }
}

extension HomeViewController: UIImagePickerControllerDelegate  & UINavigationControllerDelegate {
    
    public func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.pickerController(picker, didSelect: nil)
    }

    public func imagePickerController(_ picker: UIImagePickerController,
                                      didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        
        guard let image = info[.editedImage] as? UIImage else {
            return self.pickerController(picker, didSelect: nil)
        }
        self.pickerController(picker, didSelect: image)
    }
}
