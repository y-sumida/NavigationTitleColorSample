//
//  ViewController.swift
//  NavigationTitleColorSample
//
//  Created by Yuki Sumida on 2018/10/16.
//  Copyright © 2018年 Yuki Sumida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "ViewController1"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.red]
    }
}

