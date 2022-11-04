//
//  SceneDelegate.swift
//  BaseProject
//
//  Created by Carlos Kimura on 03/11/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = BaseViewController()
        window.makeKeyAndVisible()
        self.window = window
    }
}

