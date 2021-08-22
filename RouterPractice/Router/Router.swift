//
//  Router.swift
//  RouterPractice
//
//  Created by 松島悠人 on 2021/08/22.
//

import Foundation
import UIKit

final class Router {

    static var shared: Router = .init()
    var window: UIWindow?

    func makeRout(scene: UIWindowScene?) {
        guard let scene = scene else {
            return
        }
        let window = UIWindow(windowScene: scene)
        self.window = window
        window.makeKeyAndVisible()
        let vc = FirstViewController.makeFromStoryboard()
        window.rootViewController = vc
    }
}
