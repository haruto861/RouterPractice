//
//  FirstViewController.swift
//  RouterPractice
//
//  Created by 松島悠人 on 2021/08/22.
//

import UIKit

final class FirstViewController: UIViewController {

    @IBOutlet private weak var transitButton: UIButton! {
        didSet {
            transitButton.addTarget(self, action: #selector(transitToNext), for: .touchUpInside)
        }
    }

    static func makeFromStoryboard() -> FirstViewController {
        let vc = UIStoryboard.firstViewController
        return vc
    }

    @objc private func transitToNext() {
        Router.shared.toSecond(from: self)
    }
}


