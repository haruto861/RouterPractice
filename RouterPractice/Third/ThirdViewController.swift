//
//  ThirdViewController.swift
//  RouterPractice
//
//  Created by 松島悠人 on 2021/08/22.
//

import UIKit

final class ThirdViewController: UIViewController {

    @IBOutlet private weak var transitButton: UIButton! {
        didSet {
            transitButton.addTarget(self, action: #selector(transitToFirst), for: .touchUpInside)
        }
    }

    @objc private func transitToFirst() {
        Router.shared.toFirst()
    }
}
