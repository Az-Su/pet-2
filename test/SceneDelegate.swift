//
//  SceneDelegate.swift
//  test
//
//  Created by Sailau Almaz Maratuly on 12.03.23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        
        let viewController = ViewController()
        let nagivationController = UINavigationController(rootViewController: viewController)
        window = UIWindow(windowScene: scene)
        window?.rootViewController = nagivationController
        window?.makeKeyAndVisible()
    }
}
