//
//  FirstViewController.swift
//  RouterPractice
//
//  Created by 松島悠人 on 2021/08/22.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet private weak var transitButton: UIButton! {
        didSet {
            // viewdidload的な存在
            transitButton.addTarget(self, action: #selector(transitToNext), for: .touchUpInside)
        }
    }

    static func makeFromStoryboard() -> FirstViewController {
        let vc = UIStoryboard.firstViewController
        return vc
    }

    @objc private func transitToNext() {
        // viecontrollerは遷移するという動きを指示するだけでいいので、インスタンスの取得等はRouterクラスに任せている
        Router.shared.toSecond(from: self)
    }

}
