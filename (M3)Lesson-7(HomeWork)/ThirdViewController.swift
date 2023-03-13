//
//  ThirdViewController.swift
//  (M3)Lesson-7(HomeWork)
//
//  Created by Ahmed Muvaza on 12/3/23.
//

import UIKit

class ThirdViewController: UITabBarController {
    
    let labelWelcome: UILabel = {
        let label = UILabel()
        label.text = "View Files"
        label.numberOfLines = 0
        label.textColor = .black
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(labelWelcome)
        labelWelcome.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
