//
//  ViewController2.swift
//  NavigationTitleColorSample
//
//  Created by Yuki Sumida on 2018/10/16.
//  Copyright © 2018年 Yuki Sumida. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    private var originalAttr: [NSAttributedString.Key : Any]?

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "ViewController2"
        // redじゃなかった
        originalAttr = navigationController?.navigationBar.titleTextAttributes
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.blue]
    }

    override func willMove(toParent parent: UIViewController?) {
        super.willMove(toParent: parent)
        // いい感じ
        //navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.blue]
        navigationController?.navigationBar.titleTextAttributes = originalAttr
    }
}
