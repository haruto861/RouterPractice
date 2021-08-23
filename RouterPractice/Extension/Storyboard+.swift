//
//  Storyboard+.swift
//  RouterPractice
//
//  Created by 松島悠人 on 2021/08/22.
//

import Foundation
import UIKit

extension UIStoryboard {
    // 型に紐付いた処理
    static var firstViewController: FirstViewController {
        return UIStoryboard(name: "First", bundle: nil).instantiateInitialViewController() as! FirstViewController
    }

    static var secondViewController: SecondViewController {
        return UIStoryboard(name: "Second", bundle: nil).instantiateInitialViewController() as! SecondViewController
    }

    static var thirdViewController: ThirdViewController {
        return UIStoryboard(name: "Third", bundle: nil).instantiateInitialViewController() as! ThirdViewController
    }
}


