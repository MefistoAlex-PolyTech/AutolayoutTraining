//
//  OrientatinBasedLayoutViewController.swift
//  AutolayoutTraining
//
//  Created by Alexandr Mefisto on 12.04.2023.
//

import UIKit

class OrientatinBasedLayoutViewController: UIViewController {
    
    // MARK: - Properties
    
    let image = {
        let image = UIImage(named: "cup_coffee")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    let container = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    
    let separatorView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    

    let titleLabel = {
        let label = UILabel()
        label.text = "Coffe Cup"
        label.font = UIFont.systemFont(ofSize: 70)
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.numberOfLines = 0
        
        return label
    }()
    
    let loginTextField = {
        let textField = UITextField()
        textField.placeholder = "  Enter login"
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 8
        return textField
    }()
    
    let passwordField = {
        let textField = UITextField()
        textField.placeholder = "  Enter password"
        textField.backgroundColor = .white
        textField.isSecureTextEntry = true
        textField.layer.cornerRadius = 8
        return textField
    }()
    
    let signUpButton = {
        let button = UIButton()
        button.setTitle("Sign up", for: .normal)
        button.titleLabel?.textColor = .systemBlue
        button.layer.cornerRadius = 15
        button.tag = 0
        
        return button
    }()
    
    let signInButton = {
        let button = UIButton()
        button.setTitle("Create account", for: .normal)
        button.titleLabel?.textColor = .systemBlue
        button.layer.cornerRadius = 15
        button.tag = 1
        
        return button
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray 
       layoutViews()
    }
    
    private func layoutViews() {
        container.addSubview(titleLabel)
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(container.snp.top).offset(30)
            $0.centerX.equalTo(container.snp.centerX)
        }
       
        container.addSubview(loginTextField)
        loginTextField.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(10)
            $0.width.equalTo(titleLabel).offset(-20)
            $0.height.equalTo(40)
            $0.centerX.equalTo(container.snp.centerX)
        }
        
        container.addSubview(passwordField)
        passwordField.snp.makeConstraints {
            $0.top.equalTo(loginTextField.snp.bottom).offset(10)
            $0.width.equalTo(titleLabel).offset(-20)
            $0.height.equalTo(40)
            $0.centerX.equalTo(container.snp.centerX)
        }
        
        container.addSubview(signInButton)
        signInButton.snp.makeConstraints {
            $0.top.equalTo(passwordField.snp.bottom).offset(10)
        }
        
        container.addSubview(separatorView)
        separatorView.snp.makeConstraints {
            $0.height.equalTo(signInButton)
            $0.width.equalTo(2)
            $0.leading.equalTo(signInButton.snp.trailing).offset(6)
            $0.centerY.equalTo(signInButton.snp.centerY)
        }
        
        container.addSubview(signUpButton)
        signUpButton.snp.makeConstraints {
            $0.top.equalTo(passwordField.snp.bottom).offset(10)
            $0.leading.equalTo(separatorView.snp.trailing).offset(5)
            $0.trailing.equalTo(passwordField.snp.trailing)
        }
        
       
        
        view.addSubview(container)
        container.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.bottom.equalTo(view.snp.centerY)
        }
        
        view.addSubview(image)
        image.snp.makeConstraints {
            $0.height.equalToSuperview().multipliedBy(0.33)
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
    }
}
