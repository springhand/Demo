//
//  BaseGameModel.swift
//  DouYuShowDemo
//
//  Created by SYO_NT on 2018/2/27.
//  Copyright © 2018年 huzc. All rights reserved.
//

import UIKit

@objcMembers
class NewfeaturesModel: NSObject {
    
    var name: String = ""
    var tag: Any?
    var title: String = ""
    var age: Int = 0
    var sex: String = ""

    init(dict: [String:Any]) {
        super.init()
        
        setValuesForKeys(dict)
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        print("value = \(value)")
        print("key = \(key)")
    }
}
