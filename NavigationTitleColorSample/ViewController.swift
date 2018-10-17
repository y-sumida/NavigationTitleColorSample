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

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // こっちは効いてないどころか、指定するとviewDidAppearも効かなくなる
        //navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.red]
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // 効くけど、viewDidAppearなので、一瞬前の色が見える
        //navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.red]
    }

    @IBAction func tapButton(_ sender: Any) {
        let vc: ViewController2  = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

