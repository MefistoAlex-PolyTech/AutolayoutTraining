//
//  IntroductionAutolayoutViewController.swift
//  AutolayoutTraining
//
//  Created by Alexandr Mefisto on 11.04.2023.
//

import UIKit
import SnapKit
class IntroductionAutolayoutViewController: UIViewController {
    
    let centrallView = {
        let view =  UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    let topLeftLabel = {
        let label = UILabel()
        label.text = "TopLeftLabel"
        label.backgroundColor = .yellow
        return label
    }()
    
    let topRighnLabel = {
        let label = UILabel()
        label.text = "TopRighnLabel"
        label.backgroundColor = .yellow
        return label
    }()
    
    let bottomLeftLabel = {
        let label = UILabel()
        label.text = "BottomLeftLabel"
        label.backgroundColor = .yellow
        return label
    }()
    
    let bottomRightLabel = {
        let label = UILabel()
        label.text = "BottomRightLabel"
        label.backgroundColor = .yellow
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        title = "Introduction Autolayout"
        layoutViews()
   }
    
    private func layoutViews() {
        view.addSubview(topLeftLabel)
        view.addSubview(topRighnLabel)
        view.addSubview(bottomLeftLabel)
        view.addSubview(bottomRightLabel)
        view.addSubview(centrallView)
        
    
        topLeftLabel.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.leading.equalTo(view.safeAreaLayoutGuide.snp.leading)
        }
        
        topRighnLabel.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing)
        }
        
        bottomLeftLabel.snp.makeConstraints {
            $0.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            $0.leading.equalTo(view.safeAreaLayoutGuide.snp.leading)
        }
        
        bottomRightLabel.snp.makeConstraints {
            $0.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            $0.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing)
        }
        
        centrallView.snp.makeConstraints {
            $0.centerX.equalTo(view.snp.centerX)
            $0.centerY.equalTo(view.snp.centerY)
            $0.height.equalToSuperview().multipliedBy(0.5)
            $0.width.equalToSuperview().multipliedBy(0.5)
        }
        
    }
}
