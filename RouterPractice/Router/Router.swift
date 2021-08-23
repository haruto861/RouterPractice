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
    // 外部からのイニシャライズを防ぐ
    private init() {}
    private (set) var window: UIWindow?

    func makeRout(window: UIWindow?) {
        let vc = FirstViewController.makeFromStoryboard()
        let nav = UINavigationController(rootViewController: vc)
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
        self.window = window
    }

    func toFirst() {
        makeRout(window: window)
    }

    func toSecond(from : UIViewController) {
        let next = UIStoryboard.secondViewController
        transit(from: from, to: next)
    }

    func toThird(from: UIViewController) {
        let next = UIStoryboard.thirdViewController
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
