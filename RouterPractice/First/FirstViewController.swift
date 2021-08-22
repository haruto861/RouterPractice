//
//  FirstViewController.swift
//  RouterPractice
//
//  Created by 松島悠人 on 2021/08/22.
//

import UIKit

class FirstViewController: UIViewController {

    static func makeFromStoryboard() -> FirstViewController {
        let vc = UIStoryboard.firstViewController
        return vc
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
