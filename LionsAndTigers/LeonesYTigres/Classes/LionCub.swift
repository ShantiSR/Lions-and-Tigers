//
//  LionCub.swift
//  LeonesYTigres
//
//  Created by Shanti on 5/1/15.
//  Copyright (c) 2015 Shanti Rodríguez. All rights reserved.


import Foundation

//  Subclass the Lion Class

class LionCub: Lion {
    
    func rubLionCubsBelly () {
        println("LionCub: Snuggle and be happy")
    }
    // We can now override the function roar declared in the Lion class. When we call roar on a LionCub instance, it will print "Growl Growl"
    override func roar ()
    {
        //By using the super keyword and then using the name of the function, we can call the functionality of our super class and then add any additional functionality we wish.
        super.roar()
        println("LionCub: Growl Growl")
    }
    
}