//
//  ViewController.swift
//  LazyDemo
//
//  Created by huzc on 2017/5/31.
//  Copyright © 2017年 SYO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dateView: DateView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dateView = DateView(frame: self.view.frame)
        
        self.view.addSubview(self.dateView)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

