//
//  ViewController.swift
//  test
//
//  Created by Sailau Almaz Maratuly on 12.03.23.
//

import Foundation
import UIKit

final class ViewController: UIViewController {
    
    let rectView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
                
        rectView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(rectView)
        
        NSLayoutConstraint.activate([
            rectView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 100),
            rectView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            rectView.widthAnchor.constraint(equalToConstant: 100),
            rectView.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = rectView.bounds
        gradientLayer.colors = [UIColor.blue.cgColor, UIColor.red.cgColor]
        
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.cornerRadius = 15
        rectView.layer.addSublayer(gradientLayer)

        ShadowEffect.elevation_3(rectView.layer)
    }
}
