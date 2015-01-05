//
//  Lion.swift
//  LeonesYTigres
//
//  Created by Shanti on 4/1/15.
//  Copyright (c) 2015 Shanti Rodríguez. All rights reserved.
//

import Foundation
import UIKit

class Lion {
    var age = 0
    var isAlphaMale = false
    var image = UIImage(named:"")
    var name = ""
    var subspecies = ""
    
    //Lion Roar Function
    func roar () {
        println("Lion: Roar Roar")
    }
    
    func changeToAlphaMale () {
        self.isAlphaMale = true
    }
}