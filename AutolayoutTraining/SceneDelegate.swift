//
//  SceneDelegate.swift
//  AutolayoutTraining
//
//  Created by Alexandr Mefisto on 11.04.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.screen.bounds)
        window?.windowScene = windowScene
        let navigationRootController = UINavigationController(rootViewController: OrientatinBasedLayoutViewController())
        window?.rootViewController = navigationRootController
        window?.makeKeyAndVisible()
    }
}

