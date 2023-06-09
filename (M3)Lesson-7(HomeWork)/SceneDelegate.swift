//
//  SceneDelegate.swift
//  (M3)Lesson-7(HomeWork)
//
//  Created by Ahmed Muvaza on 12/3/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        
        
        let firstVC = ViewController()
        let tabOneBarItem = UITabBarItem(title: "Favorites",
                                         image: UIImage(systemName: "star"),
                                         selectedImage: UIImage(systemName: "star.fill"))
        
        let navBar = UINavigationController(rootViewController: firstVC)
        navBar.tabBarItem = tabOneBarItem
        
        let secondVC = SecondViewController()
        let tabTwoBarItem = UITabBarItem(title: "Recent",
                                         image: UIImage(systemName: "clock"),
                                         selectedImage: UIImage(systemName: "clock.arrow.circlepath"))
        secondVC.tabBarItem = tabTwoBarItem
        
        let thirdVC = ThirdViewController()
        let tabThreeBarItem = UITabBarItem(title: "Files",
                                           image: UIImage(systemName: "folder"),
                                           selectedImage: UIImage(systemName: "folder.fill"))
        thirdVC.tabBarItem = tabThreeBarItem
        
        let fourVC = FourthViewController()
        let tabFourBarItem = UITabBarItem(title: "Notification",
                                          image: UIImage(systemName: "bell"),
                                          selectedImage: UIImage(systemName: "bell.fill"))
        fourVC.tabBarItem = tabFourBarItem
        
        let tabbar = UITabBarController()
        tabbar.viewControllers = [navBar, secondVC, thirdVC, fourVC]
        window.rootViewController = tabbar
        self.window = window
        window.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

