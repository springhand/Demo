//
//  ViewController.swift
//  Swift4NewFeatures
//
//  Created by SYO_NT on 2018/2/27.
//  Copyright © 2018年 huzc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let json = ["name":"小明", "age":"16"]
        let model = NewfeaturesModel(dict: json)
        print("model = \(model.name)")
        print("model = \(model.tag)")
        print("model = \(model.age)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

