//
//  ViewController2.swift
//  NavigationTitleColorSample
//
//  Created by Yuki Sumida on 2018/10/16.
//  Copyright © 2018年 Yuki Sumida. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "ViewController2"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.blue]
    }

    override func willMove(toParent parent: UIViewController?) {
        super.willMove(toParent: parent)
        // いい感じ
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.red]
    }
}
