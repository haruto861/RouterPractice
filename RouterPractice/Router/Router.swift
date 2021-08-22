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
        let nav = UINavigationController(rootViewController: vc)
        window.rootViewController = nav
    }

    func toSecond(from : UIViewController) {
        let next = UIStoryboard.secondViewController
        transit(from: from, to: next)
    }

    func transit(from: UIViewController, to: UIViewController, animated: Bool = true) {
        if let nav = from.navigationController {
            nav.pushViewController(to, animated: animated)
        } else {
            from.present(to, animated: animated, completion: nil)
        }
    }
}
