//
//  ConstraintPriorytiesViewController.swift
//  AutolayoutTraining
//
//  Created by Alexandr Mefisto on 12.04.2023.
//

import UIKit

class ConstraintPriorytiesViewController: UIViewController {

    let image = {
        let image = UIImage(named: "harry_potter")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFill
        
        return imageView
    }()
    
    let authorLabel = {
        let label = UILabel()
        label.text = "J.K. Rowling"
        label.font = UIFont.preferredFont(forTextStyle: .caption1)
        
        return label
    }()
    
    let titleLabel = {
        let label = UILabel()
        label.text = "Harry Potter and the Philosopher's Stone"
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.numberOfLines = 0
        
        return label
    }()
    
    let paperBackButton = {
        let button = UIButton()
        
        button.setTitle("Paperback", for: .normal)
        button.titleLabel?.textColor = .white
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 15
        button.tag = 0
        return button
    }()
    
    let iBookButton = {
        let button = UIButton()
        button.setTitle("iBook", for: .normal)
        button.titleLabel?.textColor = .white
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 15
        button.tag = 1
        return button
    }()
    
    let kindleButton = {
        let button = UIButton()
        button.setTitle("Kindle", for: .normal)
        button.titleLabel?.textColor = .white
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 15
        button.tag = 2
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "ConstraintPrioryties"
        layoutViews()
        setupActions()
    }
    
    private func layoutViews() {
        view.addSubview(image)
        image.snp.makeConstraints {
            $0.width.equalTo(140)
            $0.height.equalTo(200)
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(20)
            $0.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).offset(20)
        }
        
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints {
            $0.leading.equalTo(image.snp.trailing).offset(20)
            $0.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(-20)
            $0.bottom.equalTo(image.snp.bottom)
            $0.width.equalTo(image.snp.width)
        }
        
        view.addSubview(paperBackButton)
        view.addSubview(iBookButton)
        view.addSubview(kindleButton)
        
        paperBackButton.snp.makeConstraints {
            $0.height.equalTo(40)
            $0.top.equalTo(image.snp.bottom).offset(40)
            $0.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).offset(10)
            $0.width.equalTo(kindleButton)
            $0.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(-10).priority(.high)
            
        }
        
        iBookButton.snp.makeConstraints {
            $0.height.equalTo(40)
            $0.top.equalTo(image.snp.bottom).offset(40)
             $0.leading.equalTo(paperBackButton.snp.trailing).offset(5)
            $0.width.equalTo(paperBackButton)
            $0.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(-10).priority(.high)
            $0.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).offset(10).priority(.high)
            
        }
        
        kindleButton.snp.makeConstraints {
            $0.height.equalTo(40)
            $0.top.equalTo(image.snp.bottom).offset(40)
            $0.leading.equalTo(iBookButton.snp.trailing).offset(5)
            $0.leading.equalTo(paperBackButton.snp.trailing).offset(5).priority(.high)
            $0.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(-10)
            $0.width.equalTo(iBookButton)
            $0.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).offset(10).priority(.high)
        }
    }
    
    private func setupActions() {
        [paperBackButton, iBookButton, kindleButton].forEach {
            $0.addTarget(self, action: #selector (paperBackButtonTouchInside(_:)), for: .touchUpInside)
        }
    }
    
    @objc private func paperBackButtonTouchInside(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5) { [weak self] in
//            switch sender.tag {
//            case 0:
//                self?.iBookButton.removeFromSuperview()
//                self?.kindleButton.removeFromSuperview()
//            case 1:
//                self?.kindleButton.removeFromSuperview()
//            case 2:
//                self?.iBookButton.removeFromSuperview()
//            default: return
//            }
            sender.removeFromSuperview()
            self?.view.layoutIfNeeded()
        }
    }
}
