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
    var image = UIImage(named:"")
    
    // chuff's https://www.youtube.com/watch?v=5Ksr0-H1gmI
    func chuff() {
        println("Tiger: Chuff Chuff")
    }
    
    func chuffANumberOfTimes (numberOfTimes:Int)
    {
        for var chuff = 0; chuff < numberOfTimes; ++chuff {
            self.chuff()
        }
    }
    
    func chuffANumberOfTimes (numberOfTimes: Int, isLoud:Bool)
    {
        for var chuffTimes = 1; chuffTimes <= numberOfTimes; chuffTimes++ {
            if isLoud {
                chuff()
            }
            else {
                println("Tiger: purr purr")
            }
        }
    }

    // Tigers Age Function
    func ageInTigerYearsFromAge(regularAge:Int) -> Int {
        let newAge = regularAge * 3
        return newAge
    }
    
    // Adding a Random Fact Function
    func randomFact() -> String {
        let randomNumber = Int(arc4random_uniform(UInt32(3)))
        var randomFact:String
        
        if randomNumber == 0 {
            randomFact = "The Tiger is the biggest species in the cat family"
        }
        else if randomNumber == 1 {
            randomFact = "Tigers can reach a length of 3.3 meters"
        }
        else {
            randomFact = "A group of tigers is known as an 'ambush' or 'streak'"
        }
        return randomFact
    }

}