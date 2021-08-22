//
//  Storyboard+.swift
//  RouterPractice
//
//  Created by 松島悠人 on 2021/08/22.
//

import Foundation
import UIKit

extension UIStoryboard {
    // 肩に紐づいた処理
    static var firstViewController: FirstViewController {
        return UIStoryboard(name: "First", bundle: nil).instantiateInitialViewController() as! FirstViewController
    }
}


