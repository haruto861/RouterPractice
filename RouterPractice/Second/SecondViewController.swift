//
//  SecondViewController.swift
//  RouterPractice
//
//  Created by 松島悠人 on 2021/08/22.
//

import UIKit

final class SecondViewController: UIViewController {

    @IBOutlet private weak var transitButton: UIButton! {
        didSet {
            transitButton.addTarget(self, action: #selector(transitToNext), for: .touchUpInside)
        }
    }

    @objc private func transitToNext() {
        Router.shared.toThird(from: self)
    }
}
