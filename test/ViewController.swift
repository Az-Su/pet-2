//
//  ViewController.swift
//  Test-ChatGPT
//
//  Created by Sailau Almaz Maratuly on 29.01.2023.
//


import Foundation
import UIKit

final class ViewController: UIViewController {
    
    private lazy var button1: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.title = "First Button"
        configuration.image = UIImage(systemName: "swift")
        configuration.imagePlacement = .trailing
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 14, bottom: 10, trailing: 14)
        configuration.imagePadding = 8
        let button = UIButton(configuration: configuration)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addAction(UIAction { [weak self] _ in
            self?.buttonPressed(sender: button)
        }, for: .touchDown)
        button.addAction(UIAction { [weak self] _ in
               self?.buttonReleased(sender: button)
           }, for: .touchUpInside)
        return button
    }()
    
    private lazy var button2: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.title = "Second medium Button"
        configuration.image = UIImage(systemName: "swift")
        configuration.imagePlacement = .trailing
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 14, bottom: 10, trailing: 14)
        configuration.imagePadding = 8
        let button = UIButton(configuration: configuration)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addAction(UIAction { [weak self] _ in
            self?.buttonPressed(sender: button)
        }, for: .touchDown)
        button.addAction(UIAction { [weak self] _ in
               self?.buttonReleased(sender: button)
           }, for: .touchUpInside)
        return button
    }()
    
    private lazy var button3: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.title = "Third"
        configuration.image = UIImage(systemName: "swift")
        configuration.imagePlacement = .trailing
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 14, bottom: 10, trailing: 14)
        configuration.imagePadding = 8
        let button = UIButton(configuration: configuration)
        button.tag = 3
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addAction(UIAction { [weak self] _ in
            self?.buttonPressed(sender: button)
        }, for: .touchDown)
        button.addAction(UIAction { [weak self] _ in
               self?.buttonReleased(sender: button)
           }, for: .touchUpInside)
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
                
        self.view.addSubview(button1)
        self.view.addSubview(button2)
        self.view.addSubview(button3)
        
        NSLayoutConstraint.activate([
            button1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            button2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button2.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 10),
            button3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button3.topAnchor.constraint(equalTo: button2.bottomAnchor, constant: 10)
        ])
    }
    
}

extension ViewController {
    
    @objc func buttonPressed(sender: UIButton) {
        UIView.animate(withDuration: 0.1) {
            sender.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
        }
    }
    
    @objc func buttonReleased(sender: UIButton) {
        UIView.animate(withDuration: 0.1) {
            sender.transform = .identity
        }
        
        if sender.tag == 3 {
            let modalController = ViewControllerModal()
            present(modalController, animated: true)
        
        }
        
    }
}



final class ViewControllerModal: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
}
