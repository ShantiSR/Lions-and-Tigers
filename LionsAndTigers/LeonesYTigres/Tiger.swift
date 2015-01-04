//
//  Tiger.swift
//  LeonesYTigres
//
//  Created by Shanti on 8/12/14.
//  Copyright (c) 2014 Shanti Rodríguez. All rights reserved.
//

import Foundation
import UIKit

struct Tiger
{
    var age = 0
    var name = ""
    var breed = ""
    var image = UIImage(named:"") //le pasaremos un parametro, que será el nombre de la imagen!
    
    func chuff() {
        println("Tiger: Chuff Chuff")
    }
    
    func chuffANumberOfTimes (numberOfTimes:Int)
    {
        for var chuff = 0; chuff < numberOfTimes; ++chuff {
            self.chuff()
        }
    }
}